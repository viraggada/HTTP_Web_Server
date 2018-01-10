CC=gcc
CFLAGS=-Wall -Werror -g -O0 -pthread
LFLAGS=-Wl -Map=main.map

SSRCS=server.c

PROGRAMS=webserver

#Default make command builds executable file
all: $(PROGRAMS)

webserver: $(SSRCS)
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: clean

clean:
	rm -rf $(PROGRAMS)
