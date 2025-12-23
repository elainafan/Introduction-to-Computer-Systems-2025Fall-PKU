/*
 * name: <your name here>
 * student-id: <2200011111>
 */
#include "cache.h"
#include "csapp.h"

static sem_t mutex, w;
static int readcnt;
Cache *cache = NULL;

int init(void)
{
    cache = calloc(1, sizeof(Cache));
    if (!cache)
        return -1;
    readcnt = 0;
    cache->used_cache = 0;
    for (int i = 0; i < MAX_CACHE_NUM; i++)
        cache->Cache[i].valid = -1;
    sem_init(&mutex, 0, 1);
    sem_init(&w, 0, 1);
    return 0;
}

void update(int idx)
{
    for (int i = 0; i < MAX_CACHE_NUM; i++)
    {
        if (i == idx)
        {
            P(&mutex);
            cache->Cache[i].timestamp = 0;
            V(&mutex);
        }
        else if (cache->Cache[i].valid != -1)
        {
            P(&mutex);
            cache->Cache[i].timestamp++;
            V(&mutex);
        }
    }
    return;
}

int query(rio_t *p, string url)
{
    P(&mutex);
    readcnt++;
    if (readcnt == 1)
        P(&w);
    V(&mutex);
    int flag = 0;
    for (int i = 0; i < MAX_CACHE_NUM; i++)
    {
        if (cache->Cache[i].valid != -1 && !strcmp(cache->Cache[i].url, url))
        {
            flag = i;
            break;
        }
    }
    if (flag)
    {
        P(&mutex);
        update(flag);
        V(&mutex);
        rio_writen(p->rio_fd, cache->Cache[flag].content, cache->Cache[flag].size);
    }
    P(&mutex);
    readcnt--;
    if (readcnt == 0)
        V(&w);
    V(&mutex);
    if (flag)
        return 1;
    else
        return 0;
}

int find_LRU()
{
    int idx = 0;
    int tem = cache->Cache[0].timestamp;
    for (int i = 1; i < MAX_CACHE_NUM; i++)
    {
        if (cache->Cache[i].timestamp > tem)
        {
            idx = i;
            tem = cache->Cache[i].timestamp;
        }
    }
    return idx;
}

int find_cold()
{
    for (int i = 0; i < MAX_CACHE_NUM; i++)
    {
        if (cache->Cache[i].valid == -1)
            return i;
    }
    return -1;
}

int add(string url, char buf[], int size)
{
    P(&w);
    if (cache->used_cache == MAX_CACHE_NUM - 1)
    {
        int idx = find_LRU();
        if (idx == -1)
            return -1;
        strcpy(cache->Cache[idx].url, url);
        memcpy(cache->Cache[idx].content, buf, size);
        cache->Cache[idx].size = size;
        P(&mutex);
        update(idx);
        V(&mutex);
    }
    else
    {
        cache->used_cache++;
        int idx = find_cold();
        if (idx == -1)
            return -1;
        strcpy(cache->Cache[idx].url, url);
        memcpy(cache->Cache[idx].content, buf, size);
        cache->Cache[idx].size = size;
        P(&mutex);
        update(idx);
        V(&mutex);
    }
    V(&w);
    return 0;
}