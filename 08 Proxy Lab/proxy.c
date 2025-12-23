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
    if (!strcasecmp(method, "GET"))
        do_get(&rio, url);
    else if (strcasecmp(method, "CONNECT"))
        fprintf(stderr, "unknown request method\n");
    close(connfd);
    return NULL;
}

static void do_get(rio_t *client, string url)
{
    string buf;
    ssize_t n = 0;
    int tot = 0;
    if (query(client, url))
        return;
    URL _url;
    if (parse_url(url, &_url) < 0)
    {
        fprintf(stderr, "Parse url error\n");
        return;
    }
    string header;
    parse_header(client, header, _url.hostname);
    int serverfd = open_clientfd(_url.hostname, _url.hostname);
    rio_t server_rio;
    rio_readinitb(&server_rio, serverfd);
    sprintf(buf, "GET %s HTTP/1.0\r\n%s", _url.path, header);
    rio_writen(serverfd, buf, strlen(buf));
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
    string buf;
    string hostname;
    hostname[0] = '\0';
    int hostlen = strlen("Host");
    int useragentlen = strlen("User-Agent");
    int connectionlen = strlen("Connection");
    int proxyconnectionlen = strlen("Proxy-Connection");
    rio_readlineb(client, buf, MAXLINE);
    while (strcmp(buf, "\r\n"))
    {
        if (!strncmp(buf, "Host", hostlen))
            strcpy(hostname, buf + strlen("Host: "));
        else if (strncmp(buf, "User-Agent", useragentlen) && strncmp(buf, "Connection", connectionlen) &&
                 strncmp(buf, "Proxy-Connection", proxyconnectionlen))
            strcat(res, buf);
        rio_readlineb(client, buf, MAXLINE);
    }
    if (hostname[0] == '\0')
        strcpy(hostname, host);
    sprintf(res + strlen(res), "Host: %s\r\n", hostname);
    sprintf(res + strlen(res), "Connection: close\r\n");
    sprintf(res + strlen(res), "Proxy-Conection:close\r\n");
    sprintf(res + strlen(res), "%s", user_agent_hdr);
    sprintf(res + strlen(res), "\r\n");
    return 0;
}