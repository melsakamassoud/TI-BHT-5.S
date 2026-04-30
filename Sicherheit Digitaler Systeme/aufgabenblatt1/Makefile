CC=gcc

CFLAGS += -W -Wall -Wextra -Werror 
LDFLAGS += -lseccomp

all: setip 

dev-install: setip install

setip: setip.c
	@$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)


install:
	@sudo cp setip /usr/local/bin/setip
	@sudo setcap cap_net_admin=ep /usr/local/bin/setip

uninstall:
	@sudo setcap -r /usr/local/bin/setip || true
	@sudo rm -f /usr/local/bin/setip

clean:
	@rm -f setip	
