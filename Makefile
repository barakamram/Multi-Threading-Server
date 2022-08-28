CC=gcc
AR=ar
FLAGS= -Wall -g

all: server

server:  server.o
	$(CC) $(FLAGS) -pthread -o server server.o

server.o: server.c
	$(CC) $(FLAGS) -pthread -c server.c



.PHONY: clean all
clean:
	rm -f *.o server
