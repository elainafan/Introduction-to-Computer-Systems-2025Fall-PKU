/*
 * name: <your name here>
 * student-id: <2200011111>
 */
#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10

typedef char string[MAXLINE];
typedef struct
{
    int timestamp;
    int valid;
    string url;
    char content[MAX_OBJECT_SIZE];
    int size;
} Line;

struct _Cache
{
    int used_cache;
    Line Cache[MAX_CACHE_NUM];
};

typedef struct _Cache Cache;

extern Cache *cache;

int init(void);
int query(rio_t *p, string url);
int add(string url, char buf[], int size);