// 在Part-A中，我参考课本策略，实现了一个缓存结构。
// 主要策略与课本讲述差不多。
// 时间戳处理上，因为每个组内的时间戳独立比较，因此考虑时间戳越大表明越久。
// 当执行某个行时，这个行的时间戳变为0，组内其他行时间戳变为1。
// 采用了writeup中说明的LRU策略，实现冲突不命中情况。
// 同时，还参考了冷不命中情况。
#include <getopt.h>  // getopt
#include <stdio.h>   // fscanf
#include <stdlib.h> //atoi

#include "cachelab.h" //printsummary
#include "contracts.h"

struct Line {
    int valid; // 有效位
    int tag; // 标记位
    int time_stamp; // 时间戳
};// 缓冲行

typedef struct Line line;

struct _Cache {
    int S;  // 组数
    int E;  // 相联度
    int B;  // 块大小
    line** l; // 二维指针表明缓存
};

typedef struct _Cache Cache;

int verbose = 0, s, E, b, t; // 读入的几个参数
int hit_cnt = 0, miss_cnt = 0, eviction_cnt = 0; // 输出的几个参数
Cache* cache; // 缓存指针
FILE* p; // 文件读写

void init_cache() {
    int S = 1 << s;
    int B = 1 << b;
    cache = malloc(sizeof(Cache));
    cache->S = S;
    cache->B = B;
    cache->E = E;
    cache->l = malloc(sizeof(line*) * S);
    for (int i = 0; i < S; i++) {
        cache->l[i] = malloc(sizeof(line) * E);
        for (int j = 0; j < E; j++) {
            cache->l[i][j].tag = -1; // 标记位记为1，表示没有标记
            cache->l[i][j].time_stamp = 0; // 时间戳初始化为0
            cache->l[i][j].valid = 0; // 有效位初始化为0
        }
    }
    return;
} // 初始化Cache的空间

int get_index(int opt_s, int opt_tag) {
    for (int i = 0; i < cache->E; i++) {
        if (cache->l[opt_s][i].tag == opt_tag && cache->l[opt_s][i].valid == 1)
            return i; // 如果存在有效位有效，并且标记位相同的行，就返回索引
    }
    return -1; // 否则，表示未找到
}// 寻找是否存在能够匹配的行

int find_LRU(int opt_s) {
    int tem_stamp = 0;
    int idx = 0;
    for (int i = 0; i < cache->E; i++) {
        if (cache->l[opt_s][i].time_stamp > tem_stamp) {
            idx = i;
            tem_stamp = cache->l[opt_s][i].time_stamp;
        }// 比较时间戳，时间戳越大说明越早被使用
    }
    return idx;
}// 根据LRU策略，在填满的组中寻找最远未被使用的行

int is_full(int opt_s) {
    for (int i = 0; i < cache->E; i++) {
        if (cache->l[opt_s][i].valid == 0) return i;// 如果找到空行就返回
    }
    return -1;// 否则返回-1表示没有空行
}// 判断是冷不命中还是冲突不命中

void update_2(int flag, int opt_s, int opt_tag) {
    for (int i = 0; i < cache->E; i++) {
        if (i == flag) {
            cache->l[opt_s][i].valid = 1;
            cache->l[opt_s][i].time_stamp = 0;
            cache->l[opt_s][i].tag = opt_tag;
            continue;
        }
        if (cache->l[opt_s][i].valid == 1) cache->l[opt_s][i].time_stamp++;
    }
    return;
}// 更新时间戳，同时更新被驱逐或者填充的行的标记位/有效位
// 时间戳越大，表示越久没被使用；同样地，刚刚被使用的行的时间戳为0。

void update(int opt_s, int opt_tag) {
    int tem = get_index(opt_s, opt_tag);//是否能够匹配
    if (tem == -1) {// 如果找不到
        miss_cnt++;// 不命中计数器增加
        if (verbose) printf("miss "); // 输出跟踪
        int flag = is_full(opt_s);// 是否是因为冷不命中
        if (flag == -1) {// 如果冲突不命中
            eviction_cnt++; // 冲突不命中计数器增加
            if (verbose) printf("eviction "); // 输出跟踪
            flag = find_LRU(opt_s);// 找到LRU策略对应的行序号
        }
        update_2(flag, opt_s, opt_tag);// 更新时间戳和对应行的标记位/有效位
        return;
    }
    hit_cnt++;// 命中计数器增加
    if (verbose) printf("hit ");// 输出跟踪
    update_2(tem, opt_s, opt_tag);// 更新时间戳和对应行的标记位/有效位
    return;
}// 进行对应的读写访问操作

void get_trace() {
    char opt;
    unsigned long address;
    int size;
    while (fscanf(p, "%s %lx,%d\n", &opt, &address, &size) > 0) {
        int opt_s = (address >> b) & ((1ULL << s) - 1); // 掩码取出索引位
        int opt_tag = address >> (b + s);// 掩码取出标记位
        if (verbose) printf("%c %lx,%d\n", opt, address, size); // 输出跟踪
        switch (opt) {
            case 'L':
                update(opt_s, opt_tag);// 进行数据加载
                break;
            case 'M':
                update(opt_s, opt_tag);// 进行数据加载
                update(opt_s, opt_tag);// 进行数据存储
                break;
            case 'S':
                update(opt_s, opt_tag);// 进行数据存储
                break;
            default:
                continue;
        }
    }
    return;
}// 处理trace文件中的操作

void free_cache() {
    int S = cache->S;
    for (int i = 0; i < S; i++) free(cache->l[i]);
    free(cache->l);
    free(cache);
    return;
}// 释放全部内存

void print_help() {
    printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.");
    printf("  -E <num>   Number of lines per set.");
    printf("  -b <num>   Number of block offset bits.");
    printf("  -t <file>  Trace file.");
    printf("\n");
    printf("Examples:\n");
    printf("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace");
    printf("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace");
    return;
}// 当遇到-h或者结束的时候输出，模仿行为

int main(int argc, char** argv) {
    int opt;
    while (-1 != (opt = getopt(argc, argv, "hvs:E:b:t:"))) {
        switch (opt) {
            case 'h':// 输出帮助
                print_help();
                exit(0);
            case 'v':// 是否跟踪
                verbose = 1;
                break;
            case 's':// 索引位大小
                s = atoi(optarg);
                break;
            case 'E':// 相联度大小
                E = atoi(optarg);
                break;
            case 'b':// 块大小
                b = atoi(optarg);
                break;
            case 't':// 待跟踪的文件名
                p = fopen(optarg, "r");
                break;
            default:
                print_help();
                exit(0);
        }
    }
    init_cache();// 初始化缓存
    get_trace();// 对文件处理
    free_cache();// 释放缓存
    printSummary(hit_cnt, miss_cnt, eviction_cnt);// 输出三个计数
    return 0;
}