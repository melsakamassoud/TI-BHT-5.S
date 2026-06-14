CFLAGS += -O2  -W -Wall -Wextra -Werror 
DEBUG  += -ggdb2 -fsanitize=address -DDEBUG

all: client server 

debug: CFLAGS += $(DEBUG)
debug: all

client: client.c poet.c aes.c
	$(CC) $(CFLAGS) client.c poet.c aes.c -o client

server: CFLAGS +=-pthread
server: server.c poet.c aes.c 
	$(CC) $(CFLAGS) server.c poet.c aes.c -o server


clean:
	$(RM) *~ server client 
