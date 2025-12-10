/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 * 我的结构大致如下：
 * 空闲块：4字节头部（前29位记大小，31位记前一个块分配情况，32位记这个块分配情况），8字节指向链表中下一个空闲块的指针，有效载荷，4字节尾部（与头部相同）
 * 分配块：4字节头部，有效载荷
 * 因此，块的大小最小为16字节。
 * 空闲链表组织方式，按照size组织，共15个链表，具体size的划分方式见head_freelists函数。
 * 操作空闲链表方法：寻找类似首次适配，插入保持一定有序性但是考虑时空复杂度只确保一定范围内有序性，即限制比较次数。
 * 堆的组织方式，最前面为8*15字节的链表首位哨兵节点，分别指向链表第一个节点的地址，然后是4字节序言块，接着中间的堆部分，最后是4字节尾言块，epilogue指向尾言块末尾。
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
// #define DEBUG
#ifdef DEBUG
#define dbg_printf(...) printf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

// 单双字
#define WSIZE 4
#define DSIZE 8

// 拓展堆大小
#define CHUNKSIZE ((1 << 12) + (1 << 11))

// 块的最小大小
#define MINSIZE 16

// 空闲块列表数量
#define FREELISTNUM 15

// 最大最小
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

// 打包
#define PACK(size, palloc, alloc) ((size) | ((palloc) << 1) | (alloc))

// 读写一个字的信息
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

// 宏

#define SET_SIZE(p, val) (*(unsigned int *)(p) = ((*(unsigned int *)(p)) & 0x7) | val) // 给定头部设置某个块的大小
#define SET_ALLOC(p) (GET(p) |= 0x1)                                                   // 给定头部设置某个块为分配
#define SET_FREE(p) (GET(p) &= ~0x1)                                                   // 给定头部设置某个块为空闲
#define SET_PREV_ALLOC(p) (GET(p) |= 0x2)                                              // 给定头部设置其前一个块为分配
#define SET_PREV_FREE(p) (GET(p) &= ~0x2)                                              // 给定头部设置其前一个块为空闲

// 获得块的头部和尾部
#define HDRP(bp) ((char *)(bp) - WSIZE)                 // 给定有效负载获取头部
#define FTRP(bp) ((char *)(bp) + GET_SIZE(bp) - DSIZE)  // 给定有效负载获取空闲块的脚部
#define GET_SIZE(bp) (GET(HDRP(bp)) & ~0x7)             // 得到某个块的大小
#define GET_ALLOC(bp) (GET(HDRP(bp)) & 0x1)             // 获得某个块是否分配
#define GET_PREV_ALLOC(bp) ((GET(HDRP(bp)) >> 1) & 0x1) // 获得某个块的前一个块是否分配

#define NEXT(bp) ((char *)(bp) + GET_SIZE(bp))       // 获取下一个块的有效负载
#define PREV(bp) ((char *)(bp) - GET_SIZE(HDRP(bp))) // 获取前一个块的有效负载，前一个块为空闲块才有效（有脚部）

#define GET_SUCC(bp) ((void *)(*(size_t *)(bp)))                  // 获取当前块的后继指针
#define SET_SUCC(bp, nextbp) (*(size_t *)(bp) = (size_t)(nextbp)) // 设置当前块的后继指针

static char *freelists;     // Freelist的开头
static char *freelists_end; // Freelist的结尾
static char *heap_st;       // 块的开头
static char *prologue;      // 序言块的位置
static char *epilogue;      // 结尾块的结尾

static inline void *coalesce(void *bp);
static inline void *extend_heap(size_t words);
static inline void *head_freelist(size_t size);
static inline void *insert_freelist(void *bp, size_t size);
static inline void remove_freelist(void *bp, size_t size);
static inline void *find_freelist(size_t size);
static inline void *place(void *bp, size_t size);
static int in_heap(const void *p);
static int aligned(const void *p);
static void freeList_debug(void);
static void heap_debug(void);
static void heap_error(int lineno, void *bp);
void mm_checkheap(int lineno);

static inline void *coalesce(void *bp)
{
    void *pre = PREV(bp), *suf = NEXT(bp);
    int pre_alloc = GET_PREV_ALLOC(bp); // 获取前一个块的分配情况，注意用GET_ALLOC(pre)会有bug
    int suf_alloc = GET_ALLOC(suf);     // 获取后一个块的分配情况
    size_t size = GET_SIZE(bp);
    if (pre_alloc && suf_alloc)
    {
        return insert_freelist(bp, size); // 直接插入
    }
    else if (!pre_alloc && suf_alloc)
    {
        size_t pre_size = GET_SIZE(pre);
        remove_freelist(pre, pre_size); // 去除前缀块
        bp = pre;                       // 合并为一个大块
        size += pre_size;
    }
    else if (pre_alloc && !suf_alloc)
    {
        size_t suf_size = GET_SIZE(suf);
        remove_freelist(suf, suf_size); // 去除后缀块
        size += suf_size;               // 合并为一个大块
    }
    else if (!pre_alloc && !suf_alloc)
    {
        size_t pre_size = GET_SIZE(pre);
        remove_freelist(pre, pre_size);
        size_t suf_size = GET_SIZE(suf);
        remove_freelist(suf, suf_size);
        bp = pre;
        size += pre_size + suf_size; // 去除前缀块和后缀块，合并为一个大块
    }
    SET_SIZE(HDRP(bp), size);
    SET_SIZE(FTRP(bp), size);
    return insert_freelist(bp, GET_SIZE(bp));
} // 合并一个块和相邻的块

static inline void *extend_heap(size_t words)
{
    // mm_checkheap(__LINE__);
    // size_t size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    void *bp = mem_sbrk(words); // 向堆取内存
    if (bp == (void *)-1)
        return (void *)-1;
    int palloc = GET_PREV_ALLOC(epilogue);
    epilogue += words; // 尾言块后移
    PUT(HDRP(bp), PACK(words, palloc, 0));
    PUT(FTRP(bp), PACK(words, palloc, 0)); // 处理新的块和原先的尾言块
    PUT(HDRP(epilogue), PACK(0, 0, 1));
    return coalesce(bp); // 合并空闲块
} // 拓展堆

static inline void *head_freelist(size_t size)
{
    if (size <= 24)
        return freelists;
    else if (size <= 32)
        return freelists + DSIZE;
    else if (size <= 64)
        return freelists + 2 * DSIZE;
    else if (size <= 80)
        return freelists + 3 * DSIZE;
    else if (size <= 120)
        return freelists + 4 * DSIZE;
    else if (size <= 240)
        return freelists + 5 * DSIZE;
    else if (size <= 480)
        return freelists + 6 * DSIZE;
    else if (size <= 960)
        return freelists + 7 * DSIZE;
    else if (size <= 1920)
        return freelists + 8 * DSIZE;
    else if (size <= 3840)
        return freelists + 9 * DSIZE;
    else if (size <= 7680)
        return freelists + 10 * DSIZE;
    else if (size <= 15360)
        return freelists + 11 * DSIZE;
    else if (size <= 30720)
        return freelists + 12 * DSIZE;
    else if (size <= 61440)
        return freelists + 13 * DSIZE;
    return freelists + 14 * DSIZE;
} // 取链表头，神秘小优化
static inline void *insert_freelist(void *bp, size_t size)
{
    void *head = head_freelist(size);
    void *cur = head;
    int cnt = 0;
    while (GET_SUCC(cur))
    {
        cnt++;
        if (cnt >= 3 || GET_SIZE(GET_SUCC(cur)) >= size)
            break;
        cur = GET_SUCC(cur);
    }
    SET_SUCC(bp, GET_SUCC(cur));
    SET_SUCC(cur, bp);
    return bp;
} // 往空闲链表中插入当前块

static inline void remove_freelist(void *bp, size_t size)
{
    void *head = head_freelist(size);
    void *cur;
    cur = head;
    while (GET_SUCC(cur))
    {
        if (GET_SUCC(cur) == bp)
            break;
        cur = GET_SUCC(cur);
    }
    SET_SUCC(cur, GET_SUCC(bp));
    return;
} // 从空闲链表中除去当前块

static inline void *find_freelist(size_t size)
{
    // mm_checkheap(__LINE__);
    void *head = head_freelist(size);
    void *cur = GET_SUCC(head);
    while (cur)
    {
        if (GET_SIZE(cur) >= size)
            return cur;
        cur = GET_SUCC(cur);
    } // 在当前链表中找是否有符合的空闲块
    char *cur2 = head + DSIZE;
    while (cur2 != freelists_end)
    {
        if (GET_SUCC(cur2))
            return GET_SUCC(cur2);
        cur2 += DSIZE;
    } // 直接找后续链表中是否存在空闲块，优化时间复杂度
    return NULL;
} // 找到适配的空闲块

static inline void *place(void *bp, size_t size)
{
    size_t totsize = GET_SIZE(bp);
    size_t spare = totsize - size;
    if (spare <= MINSIZE)
    {
        SET_ALLOC(HDRP(bp));
        SET_PREV_ALLOC(HDRP(NEXT(bp)));
        if (!GET_ALLOC(NEXT(bp)))
            PUT(FTRP(NEXT(bp)), GET(HDRP(NEXT(bp))));
        // mm_checkheap(__LINE__);
        return bp;
    } // 如果剩余空间小于最小，直接分配不拆分
    void *newbp;
    PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(bp), 1));
    newbp = NEXT(bp);
    PUT(HDRP(newbp), PACK(spare, 1, 0));
    PUT(FTRP(newbp), PACK(spare, 1, 0));
    insert_freelist(newbp, spare); // 否则将其拆分为一个分配块和一个新空闲块
    // mm_checkheap(__LINE__);
    return bp;
} // 将一个size大小的块设置为已分配

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void)
{
    if ((freelists = mem_sbrk(FREELISTNUM * DSIZE + 2 * WSIZE)) == (void *)-1) // 向堆取内存
        return -1;
    freelists_end = freelists + FREELISTNUM * DSIZE; // 设置空闲链表的尾部
    heap_st = freelists + FREELISTNUM * DSIZE;       // 设置堆头
    prologue = heap_st;                              // 序言块
    epilogue = prologue + WSIZE;                     // 尾言块
    memset(freelists, 0, FREELISTNUM * DSIZE);       // 初始化空闲链表
    PUT(prologue, PACK(DSIZE, 1, 1));                // 初始化序言块
    PUT(epilogue, PACK(0, 1, 1));                    // 初始化尾言块
    heap_st += 2 * WSIZE;
    epilogue = heap_st; // epilogue设置为尾言块的末尾
    // mm_checkheap(__LINE__);
    if (extend_heap(1 << 14) == (void *)-1) // 向堆取初始内存
        return -1;
    // mm_checkheap(__LINE__);
    return 0;
} // 初始化内存

/*
 * malloc
 */
void *malloc(size_t size)
{
    if (size == 0)
        return NULL;
    if (size >= 120 && size < 128)
        size = 128;
    else if (size >= 448 && size < 512)
        size = 512;
    else if (size >= 1000 && size < 1024)
        size = 1024;
    else if (size >= 2000 && size < 2048)
        size = 2048; // 神秘小优化
    // mm_checkheap(__LINE__);
    size = size + WSIZE <= MINSIZE ? MINSIZE : ALIGN(size + WSIZE); // 对齐
    void *bp = find_freelist(size);                                 // 找到适配空闲块
    if (!bp)
    {
        bp = extend_heap(MAX(size, CHUNKSIZE));
        if (bp == (void *)-1)
            return NULL;
    } // 找不到就拓展堆
    remove_freelist(bp, GET_SIZE(bp));
    return place(bp, size); // 否则删除这个空闲块并分配
} // 分配size大小的内存

/*
 * free
 */
void free(void *ptr)
{
    if (!ptr)
        return;
    // mm_checkheap(__LINE__);
    SET_FREE(HDRP(ptr));
    PUT(FTRP(ptr), GET(HDRP(ptr)));
    void *suf = NEXT(ptr);
    SET_PREV_FREE(HDRP(suf));
    if (!GET_ALLOC(suf))
        PUT(FTRP(suf), GET(HDRP(suf))); // 更新空闲块前后的分配情况
    coalesce(ptr);                      // 合并空闲块
    // mm_checkheap(__LINE__);
    return;
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size)
{
    size_t oldsize;
    void *newptr;
    if (size == 0)
    {
        free(oldptr);
        return 0;
    }
    if (oldptr == NULL)
        return malloc(size);                                        // 如果为空直接分配,malloc中也有对齐
    size = size + WSIZE <= MINSIZE ? MINSIZE : ALIGN(size + WSIZE); // 对齐
    oldsize = GET_SIZE(oldptr);
    if (oldsize >= size)
        return oldptr; // 如果比size大就直接返回
    newptr = malloc(size);
    if (!newptr)
        return NULL;
    memmove(newptr, oldptr, MIN(size, GET_SIZE(oldptr))); // 利用一下函数
    free(oldptr);                                         // 释放原有指针
    // mm_checkheap(__LINE__);
    return newptr;
} // 重新分配

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc(size_t nmemb, size_t size)
{
    size_t bytes = nmemb * size;
    void *newptr;
    newptr = malloc(bytes);
    if (!newptr)
        return NULL;
    memset(newptr, 0, bytes);
    // mm_checkheap(__LINE__);
    return newptr;
} // 分配并初始化块

// 下面是Debug部分
static int in_heap(const void *p)
{
    return p <= mem_heap_hi() && p >= mem_heap_lo();
} // 一个指针是否在堆中

static int aligned(const void *p)
{
    return (size_t)ALIGN(p) == (size_t)p;
} // 是否对八字节对齐

static void freeList_debug(void)
{
    printf("--------------------FREELIST DEBUG--------------------\n");
    for (size_t i = 0; i < FREELISTNUM; ++i)
    {
        printf("Entry %lu", i);
        int cnt = 0;
        for (void *entry = freelists + i * DSIZE; entry; entry = GET_SUCC(entry))
        {
            printf(" --> %p", GET_SUCC(entry));
            if (++cnt % 5 == 0)
                printf("\n          ");
        }
        printf("\n");
    }
    printf("--------------------END FREELIST DEBUG--------------------\n");
} // 输出空闲链表中块的大小

static void heap_debug(void)
{
    printf("--------------------HEAP DEBUG--------------------\n");
    printf("mem_heap_lo: %p mem_heap_hi: %p\n", mem_heap_lo(), mem_heap_hi());
    int cnt = 0;
    void *p;
    for (p = heap_st; GET_SIZE(p) > 0; p = NEXT(p))
    {
        printf("Block %5d   adr %p   size %5x   alloc %d   palloc %d   hd %5x", ++cnt, p, GET_SIZE(p), GET_ALLOC(p), GET_PREV_ALLOC(p), GET(HDRP(p)));
        if (!GET_ALLOC(p))
            printf(" ft %5x", GET(FTRP(p)));
        printf("\n");
        fflush(stdout);
    }
    printf("Block %5d   adr %p   size %5x   alloc %d   hd %7x\n", ++cnt, p, GET_SIZE(p), GET_ALLOC(p), GET(HDRP(p)));
    printf("--------------------END HEAP DEBUG--------------------\n");
} // 输出堆中块的大小

static void heap_error(int lineno, void *bp)
{
    printf("Error detected in line %d\n", lineno);
    freeList_debug();
    heap_debug();
    exit(1);
} // 检测到堆错误后的措施

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno)
{
    void *pro = heap_st - WSIZE;
    if (!in_heap(pro))
    {
        printf("Prologue not in heap\n");
        heap_error(lineno, pro);
    } // 序言块是否在堆中
    if (!GET_ALLOC(pro) || GET_SIZE(pro) != DSIZE)
    {
        printf("Prologue corrupted.\n");
        printf("Expected 0x%x,but got 0x%x.\n", PACK(DSIZE, 1, 1), GET(HDRP(pro)));
        heap_error(lineno, pro);
    } // 序言块未分配，或者没有对齐
    if (mem_heap_hi() + 1 != epilogue)
    {
        printf("Incorrect epilogue location.\n");
        heap_error(lineno, epilogue);
    } // 尾言块位置不对
    if (!aligned(epilogue))
    {
        printf("Epilogue not aligned.\n");
        heap_error(lineno, pro);
    } // 尾言块没对齐
    if (!GET_ALLOC(epilogue) || GET_SIZE(epilogue))
    {
        printf("Epilogue corrupted.\n");
        heap_error(lineno, epilogue);
    } // 尾言块神秘错误，因为定义是epilogue在尾言块之后
    if (heap_st - freelists != FREELISTNUM * DSIZE + 2 * WSIZE)
    {
        printf("Incorrect free list header array size.\n");
        heap_error(lineno, (void *)-1);
    } // 空闲链表数量神秘错误
    int free_cnt = 0;
    for (int i = 0; i < FREELISTNUM; i++)
    {
        void *entry = freelists + i * DSIZE;
        for (void *bp = GET_SUCC(entry); bp; bp = GET_SUCC(bp))
        {
            free_cnt++;
            if (!in_heap(bp))
            {
                printf("Free block not in heap.\n");
                printf("Block address: %p\n", bp);
                printf("mem_heap_lo: %p\nmem_heap_hi: %p\n", mem_heap_lo(), mem_heap_hi());
                heap_error(lineno, bp);
            } // 空闲块不在堆中
            if (!aligned(bp))
            {
                printf("Free block not aligned.\n");
                heap_error(lineno, bp);
            } // 未对齐
            if (GET_ALLOC(bp))
            {
                printf("Allocated block in free list.\n");
                heap_error(lineno, bp);
            } // 空闲块被分配
            if (GET_SIZE(bp) < MINSIZE)
            {
                printf("Free block too small.\n");
                printf("Block size: %d\n", GET_SIZE(bp));
                heap_error(lineno, bp);
            } // 空闲块小于最小大小
            if (GET(HDRP(bp)) != GET(FTRP(bp)))
            {
                printf("Inconsistent free block header and footer.\n");
                heap_error(lineno, bp);
            } // 空闲块头脚不相等
            if (head_freelist(GET_SIZE(bp)) != entry)
            {
                printf("Free block falls into the wrong bucket.\n");
                heap_error(lineno, bp);
            } // 空闲块大小不对
        }
    }

    void *bp;
    int cnt = 1;
    for (bp = heap_st; GET_SIZE(bp) > 0; bp = NEXT(bp), cnt++)
    {
        if (!in_heap(bp))
        {
            printf("Block not in heap\n");
            printf("Block address: %p\n", bp);
            printf("mem_heap_lo: %p\nmem_heap_hi: %p\n", mem_heap_lo(), mem_heap_hi());
            heap_error(lineno, bp);
        } // 某个块不在堆中
        if (!aligned(bp))
        {
            printf("Block not aligned.\n");
            heap_error(lineno, bp);
        } // 某个块未对齐
        if (GET_SIZE(bp) < MINSIZE)
        {
            printf("Block too small.\n");
            printf("Block size: %d\n", GET_SIZE(bp));
            heap_error(lineno, bp);
        } // 某个块比最小块小
        if (!GET_ALLOC(bp))
        {
            --free_cnt;
            if (!GET_ALLOC(NEXT(bp)))
            {
                printf("Consective free blocks not coalesced.\n");
                heap_error(lineno, bp);
            }
        } // 两个相邻空闲块未分配
        if (GET_ALLOC(bp) != GET_PREV_ALLOC(NEXT(bp)))
        {
            printf("Prev_alloc bit inconsistent.\n");
            printf("Block in address %p is %sallocated, but the following block marked it otherwise.\n", bp, GET_ALLOC(bp) ? "" : "un");
            heap_error(lineno, bp);
        } // 前后信息不对
    }
    if (free_cnt)
    {
        printf("Free list total size and free block number don't match.\n");
        heap_error(lineno, bp);
    } // 链表中与堆中空闲块数量不一样
    if (bp != epilogue)
    {
        printf("Incorrect epilogue location.\n");
        heap_error(lineno, bp);
    } // epilogue遍历不对
}