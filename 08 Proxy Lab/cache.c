/*
 * name: <your name here>
 * student-id: <2200011111>
 */
#include "cache.h"

#include "csapp.h"

/*
 * 使用一个全局互斥量保护整个缓存。
 *
 * 为什么用单锁？
 * - 实现简单，避免复杂锁顺序带来的隐蔽死锁。
 * - 缓存行数量少、对象较小，粗粒度加锁开销可接受。
 */
static sem_t cache_mutex;

/* 全局缓存实例（在 init 中分配）。 */
Cache* cache = NULL;

/* 若 url 存在则返回对应缓存行下标，否则返回 -1。调用者需已持有锁。 */
static int find_line(const char* url) {
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        if (cache->Cache[i].valid && !strcmp(cache->Cache[i].url, url)) return i;
    }
    return -1;
}

/* 返回一个空缓存行下标，否则返回 -1。调用者需已持有锁。 */
static int find_empty(void) {
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        if (!cache->Cache[i].valid) return i;
    }
    return -1;
}

/* 返回 LRU（最近最少使用）缓存行下标，否则返回 -1。调用者需已持有锁。 */
static int find_lru(void) {
    int idx = -1;
    int max_ts = -1;
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        if (!cache->Cache[i].valid) continue;
        if (cache->Cache[i].timestamp > max_ts) {
            max_ts = cache->Cache[i].timestamp;
            idx = i;
        }
    }
    return idx;
}

/*
 * touch - 更新 LRU 时间戳。
 *
 * 约定：
 * - 所有有效行 timestamp++；
 * - 被访问的那一行设为 0（最新使用）。
 */
static void touch(int idx) {
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        if (!cache->Cache[i].valid) continue;
        cache->Cache[i].timestamp++;
    }
    if (idx >= 0 && idx < MAX_CACHE_NUM && cache->Cache[idx].valid) cache->Cache[idx].timestamp = 0;
}

/* 分配并初始化缓存元数据。 */
int init(void) {
    cache = calloc(1, sizeof(Cache));
    if (!cache) return -1;
    cache->used_cache = 0;
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        cache->Cache[i].valid = 0;
        cache->Cache[i].timestamp = 0;
        cache->Cache[i].size = 0;
        cache->Cache[i].url[0] = '\0';
    }
    sem_init(&cache_mutex, 0, 1);
    return 0;
}

/*
 * query - 在缓存中查找 url。
 *
 * 关键实现细节：
 * - 在持锁状态下把缓存内容拷贝到栈上临时缓冲区，随后释放锁，再调用 rio_writen()。
 * - 这样可以避免在“向客户端写数据”这种潜在慢操作期间长期占用缓存锁。
 */
int query(rio_t* p, string url) {
    if (!cache) return 0;

    P(&cache_mutex);
    int idx = find_line(url);
    if (idx >= 0) {
        char tmp[MAX_OBJECT_SIZE];
        int size = cache->Cache[idx].size;
        if (size < 0) size = 0;
        if (size > MAX_OBJECT_SIZE) size = MAX_OBJECT_SIZE;
        memcpy(tmp, cache->Cache[idx].content, size);
        touch(idx);
        V(&cache_mutex);
        rio_writen(p->rio_fd, tmp, size);
        return 1;
    }
    V(&cache_mutex);
    return 0;
}

/*
 * add - 插入新的缓存条目。
 *
 * 策略：
 * - 若 url 已存在，直接覆盖该行。
 * - 否则优先使用空行；若无空行则淘汰 LRU 行。
 * - 仅缓存 size 在 [0, MAX_OBJECT_SIZE] 范围内的对象。
 */
int add(string url, char buf[], int size) {
    if (!cache) return -1;
    if (size < 0 || size > MAX_OBJECT_SIZE) return -1;

    P(&cache_mutex);

    int idx = find_line(url);
    if (idx < 0) {
        idx = find_empty();
        if (idx < 0) idx = find_lru();
        if (idx < 0) {
            V(&cache_mutex);
            return -1;
        }
        if (!cache->Cache[idx].valid) cache->used_cache++;
    }

    cache->Cache[idx].valid = 1;
    strncpy(cache->Cache[idx].url, url, MAXLINE - 1);
    cache->Cache[idx].url[MAXLINE - 1] = '\0';
    memcpy(cache->Cache[idx].content, buf, size);
    cache->Cache[idx].size = size;
    touch(idx);

    V(&cache_mutex);
    return 0;
}