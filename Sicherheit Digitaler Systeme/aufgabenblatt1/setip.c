#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <net/if.h>
#include <error.h>


void set_ip(const char *ip, const char *dev) {
	struct ifreq ifr;
	int fd = socket(AF_INET, SOCK_DGRAM, 0);
	if (fd < 0) error(errno, errno, "socket");
	strncpy(ifr.ifr_name, dev, IFNAMSIZ);

	struct sockaddr_in* addr = (struct sockaddr_in *) &ifr.ifr_addr;
	addr->sin_family = AF_INET;
	addr->sin_addr.s_addr = inet_addr(ip);
	if (ioctl(fd, SIOCSIFADDR, &ifr) == -1) error(0, errno, "SIOCSIFADDR");

	close(fd);
}

int main(int argc, char argv[]) {
	// if(argc != 3) exit(EXIT_FAILURE);	
	char *ip_interfaces[] = {0};
	struct dirent *entry;
	DIR *dir = opendir("/sys/class/net/");

	if (!dir) {
		perror("Couldn't open directory");	
		exit(EXIT_FAILURE); 
	}

	while ((entry = readdir(dir)) != NULL) {
		printf("%s\n", entry->d_name);
		if(entry->d_name != "." || entry->d_name != "..") {
			malloc	
		}
	}

	closedir(dir);
	// set_ip(argv[1], argv[2]);	
	exit(EXIT_SUCCESS);
}
