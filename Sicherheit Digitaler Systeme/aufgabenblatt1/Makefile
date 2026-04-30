CC=gcc

CFLAGS += -W -Wall -Wextra -Werror -lseccomp

all: setip 

dev-install: setip install

setip: setip.c
	$(CC) -o $@ $< $(CFLAGS)


install:
	# sudo apt install libseccomp-dev
	cp setip /usr/local/bin/setip
	chown root:root /usr/local/bin/setip
	chmod u+s /usr/local/bin/setip

uninstall:
	rm -f /usr/local/bin/setip

clean:
	rm -rf setip	
