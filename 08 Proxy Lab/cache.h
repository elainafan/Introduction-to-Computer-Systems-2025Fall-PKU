/*
 * name: <your name here>
 * student-id: <2200011111>
 */

/*
 * cache.h - 代理用的小型内存缓存模块。
 *
 * 设计说明：
 * - 缓存的 key 是 URL，value 是完整的 HTTP 响应字节流。
 * - 只缓存 size <= MAX_OBJECT_SIZE 的对象。
 * - 淘汰策略为 LRU（通过每条缓存行的 timestamp 实现）。
 * - 线程安全由 cache.c 中的实现保证。
 */

#ifndef CACHE_H
#define CACHE_H

#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10

typedef char string[MAXLINE];
typedef struct
{
    /* timestamp 越大表示“越久未被访问”（越不常用）。 */
    int timestamp;
    /* 1 = 有效缓存行，0 = 空行。 */
    int valid;
    string url;
    /* 缓存对象字节（HTTP 响应）。 */
    char content[MAX_OBJECT_SIZE];
    /* content 中有效字节数。 */
    int size;
} Line;

struct _Cache
{
    /* 当前有效缓存行数量（尽力维护的计数，用于统计/调试）。 */
    int used_cache;
    Line Cache[MAX_CACHE_NUM];
};

typedef struct _Cache Cache;

extern Cache *cache;

/* 初始化全局缓存状态。query/add 之前必须先调用一次。 */
int init(void);

/*
 * query - 若命中缓存，则把缓存内容写到客户端 fd 并返回 1；
 *         未命中则返回 0。
 */
int query(rio_t *p, string url);

/* add - 若 size 合法，将 (url -> buf[0..size)) 插入缓存。 */
int add(string url, char buf[], int size);

#endif