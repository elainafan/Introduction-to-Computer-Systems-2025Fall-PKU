/*
 * name: <your name here>
 * student-id: <2200011111>
 */
#include <stdio.h>

#include "csapp.h"
#include "cache.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/*
 * proxy.c - 支持并发的 HTTP/1.0 代理（带小型内存缓存）。
 *
 * 并发模型：
 * - 每个客户端连接创建一个分离(detached)线程。
 * - 每个线程只处理一个请求，然后关闭连接。
 *
 * HTTP 行为：
 * - 仅支持 GET 方法。
 * - 会重写/规范化请求头，确保：
 *   - 只发送一个 User-Agent（使用 user_agent_hdr）
 *   - Connection: close 与 Proxy-Connection: close
 * - 使用 HTTP/1.0 以简化连接管理。
 *
 * 缓存行为：
 * - 命中：直接返回缓存的响应字节。
 * - 未命中：转发到源站、将响应流式写回客户端；若对象大小 <= MAX_OBJECT_SIZE 则缓存。
 */

typedef char string[MAXLINE];
typedef struct _URL
{
    string hostname;
    string port;
    string path;
} URL;

static void do_get(rio_t *rp, string url);
static void *thread(void *vargp);
static int parse_url(string url, URL *parsed);
static int parse_header(rio_t *client, string res, const string host);

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

int main(int argc, char **argv)
{
    /* 避免对已关闭 socket 写入导致进程被 SIGPIPE 终止。 */
    Signal(SIGPIPE, SIG_IGN);
    int listenfd, *connfd;
    string hostname, port;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    /* 在 query/add 之前必须初始化缓存一次。 */
    if (init() < 0)
    {
        fprintf(stderr, "cache init failed\n");
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    clientlen = sizeof(clientaddr);

    while (1)
    {
        connfd = (int *)malloc(sizeof(int));
        *connfd = accept(listenfd, (SA *)&clientaddr, &clientlen);
        if (*connfd < 0)
        {
            fprintf(stderr, "accept error: %s\n", strerror(errno));
            continue;
        }
        if (getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, 0) < 0)
        {
            fprintf(stderr, "getnameinfo error: %s\n", strerror(errno));
            continue;
        }
        Pthread_create(&tid, NULL, thread, connfd);
    }
    close(listenfd);
    printf("%s", user_agent_hdr);
    return 0;
}

static void *thread(void *vargp)
{
    /* 分离线程：线程退出后由系统自动回收资源。 */
    if (pthread_detach(pthread_self()) < 0)
    {
        fprintf(stderr, "pthread_detach error: %s\n", strerror(errno));
        return (void *)-1;
    }
    int connfd = *((int *)vargp);
    string buf, method, url, version;
    rio_t rio;
    rio_readinitb(&rio, connfd);
    free(vargp);

    /* 读取请求行："METHOD URL VERSION\r\n" */
    if (rio_readlineb(&rio, buf, MAXLINE) <= 0)
    {
        fprintf(stderr, "fail to read request line\n");
        return (void *)-1;
    }
    if (sscanf(buf, "%s%s%s", method, url, version) != 3)
    {
        fprintf(stderr, "malformed request line\n");
        return (void *)-1;
    }
    /* 本实验代理主要要求支持 GET。 */
    if (!strcasecmp(method, "GET"))
        do_get(&rio, url);
    else
        fprintf(stderr, "unknown request method: %s\n", method);
    close(connfd);
    return NULL;
}

static void drain_request_headers(rio_t *client)
{
    /*
     * 命中缓存时也要把客户端剩余请求头读完再关闭连接，
     * 否则客户端可能还在发送头部就遇到提前关闭。
     */
    char buf[MAXLINE];
    while (Rio_readlineb(client, buf, MAXLINE) > 0)
    {
        if (!strcmp(buf, "\r\n"))
            break;
    }
}

static void do_get(rio_t *client, string url)
{
    string buf;
    ssize_t n = 0;
    int tot = 0;
    /* 若命中缓存，直接返回。 */
    if (query(client, url))
    {
        drain_request_headers(client);
        return;
    }
    URL _url;
    /* 解析绝对 URL（期望格式 http://host[:port]/path）。 */
    if (parse_url(url, &_url) < 0)
    {
        fprintf(stderr, "Parse url error\n");
        return;
    }
    string header;
    header[0] = '\0';

    /* 构建转发给源站的请求头。 */
    parse_header(client, header, _url.hostname);

    /* 与源站建立连接。 */
    int serverfd = open_clientfd(_url.hostname, _url.port);
    if (serverfd < 0)
    {
        fprintf(stderr, "open_clientfd error\n");
        return;
    }
    rio_t server_rio;
    rio_readinitb(&server_rio, serverfd);

    /* 转发请求行与请求头。 */
    snprintf(buf, MAXLINE, "GET %s HTTP/1.0\r\n", _url.path);
    rio_writen(serverfd, buf, strlen(buf));
    rio_writen(serverfd, header, strlen(header));

    /* 将源站响应流式写回；若对象足够小则同时缓冲用于缓存。 */
    char cache[MAX_OBJECT_SIZE];
    while ((n = rio_readnb(&server_rio, buf, MAXLINE)))
    {
        if (n == -1)
        {
            fprintf(stderr, "rio_readlineb error\n");
            close(serverfd);
            return;
        }
        if (tot + n > MAX_OBJECT_SIZE)
            tot = -1;
        if (tot != -1)
        {
            memcpy(cache + tot, buf, n);
            tot += n;
        }
        if (rio_writen(client->rio_fd, buf, n) != n)
        {
            fprintf(stderr, "rio_written error\n");
            close(serverfd);
            return;
        }
    }
    if (tot != -1)
        add(url, cache, tot);
    close(serverfd);
    return;
}

static int parse_url(string url, URL *parsed)
{
    /*
     * parse_url - 将绝对 URL 拆分为 hostname / port / path。
     *
     * 注意：
     * - 该函数会临时修改输入 url 字符串：在解析过程中插入 '\0' 作为分隔符。
     * - 若 URL 中没有端口，则默认端口为 80。
     */
    char *host, *port, *path;
    const int n = strlen("http://");
    if (strncmp(url, "http://", n))
        return -1;
    host = url + n;
    port = strchr(url + n, ':');
    path = strchr(url + n, '/');
    if (!path)
        return -1;
    if (!port)
    {
        *path = '\0';
        strcpy(parsed->hostname, host);
        strcpy(parsed->port, "80");
        *path = '/';
        strcpy(parsed->path, path);
    }
    else
    {
        *port = '\0';
        strcpy(parsed->hostname, host);
        *port = ':';
        *path = '\0';
        strcpy(parsed->port, port + 1);
        *path = '/';
        strcpy(parsed->path, path);
    }
    return 0;
}

static int parse_header(rio_t *client, string res, const string host)
{
    /*
     * parse_header - 读取客户端请求头，并构造一个“规范化”的请求头块转发给源站。
     *
     * 会丢弃（并由代理统一补齐/替换）以下头：
     * - User-Agent
     * - Connection
     * - Proxy-Connection
     *
     * 并保证一定存在 Host 头。
     */
    string buf;
    char host_hdr[MAXLINE];
    host_hdr[0] = '\0';
    while (Rio_readlineb(client, buf, MAXLINE) > 0)
    {
        if (!strcmp(buf, "\r\n"))
            break;
        if (!strncasecmp(buf, "Host:", 5))
        {
            strncpy(host_hdr, buf, MAXLINE - 1);
            host_hdr[MAXLINE - 1] = '\0';
            continue;
        }
        if (!strncasecmp(buf, "User-Agent:", 11) ||
            !strncasecmp(buf, "Connection:", 11) ||
            !strncasecmp(buf, "Proxy-Connection:", 17))
            continue;

        size_t left = MAXLINE - strlen(res) - 1;
        if (left > 0)
            strncat(res, buf, left);
    }
    if (host_hdr[0] == '\0')
        snprintf(host_hdr, MAXLINE, "Host: %s\r\n", host);
    size_t left;
    left = MAXLINE - strlen(res) - 1;
    if (left > 0)
        strncat(res, host_hdr, left);
    left = MAXLINE - strlen(res) - 1;
    if (left > 0)
        strncat(res, user_agent_hdr, left);
    left = MAXLINE - strlen(res) - 1;
    if (left > 0)
        strncat(res, "Connection: close\r\n", left);
    left = MAXLINE - strlen(res) - 1;
    if (left > 0)
        strncat(res, "Proxy-Connection: close\r\n\r\n", left);
    return 0;
}