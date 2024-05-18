CC=g++
CFLAGS= -g -Wall 

all: proxy

proxy: proxyServerWithCache.c
	$(CC) $(CFLAGS) -o proxyParse.o -c proxyParse.c -lpthread
	$(CC) $(CFLAGS) -o proxy.o -c proxyServerWithCache.c -lpthread
	$(CC) $(CFLAGS) -o proxy proxyParse.o proxy.o -lpthread

clean:
	rm -f proxy *.o

tar:
	tar -cvzf ass1.tgz proxyServerWithCache.c README Makefile proxyParse.c proxyParse.h
