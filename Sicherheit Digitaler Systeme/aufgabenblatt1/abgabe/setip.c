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
#include <ctype.h>
#include <seccomp.h>
#include <stdbool.h>


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

void allow_syscall(scmp_filter_ctx ctx, int syscall) {
	seccomp_rule_add(ctx, SCMP_ACT_ALLOW, syscall, 0);
}

void set_allow_list(scmp_filter_ctx ctx) {
	allow_syscall(ctx, SCMP_SYS(write));
	allow_syscall(ctx, SCMP_SYS(read));
	allow_syscall(ctx, SCMP_SYS(close));
	allow_syscall(ctx, SCMP_SYS(prctl));
	allow_syscall(ctx, SCMP_SYS(seccomp));
	allow_syscall(ctx, SCMP_SYS(setgid));
	allow_syscall(ctx, SCMP_SYS(setuid));

	allow_syscall(ctx, SCMP_SYS(ioctl));
	allow_syscall(ctx, SCMP_SYS(socket));
	
	allow_syscall(ctx, SCMP_SYS(exit));
	allow_syscall(ctx, SCMP_SYS(exit_group));
}

static void setup_syscall(bool kill) {
	scmp_filter_ctx ctx;
	if (kill) {
		ctx = seccomp_init(SCMP_ACT_KILL);
		if (ctx) {
			set_allow_list(ctx);
		} else {
			perror("seccomp_init()");
		}
	} else {
		ctx = seccomp_init(SCMP_ACT_ALLOW);
		if (ctx) {
			seccomp_rule_add(ctx, SCMP_ACT_KILL_PROCESS, SCMP_SYS(write), 0);
		} else {
			perror("seccomp_init()");
		}
	}
	seccomp_load(ctx);
	seccomp_release(ctx);
}

int main(int argc,const char* argv[]) {
	if(argc != 3) {
		puts("Usage: setip <interface> <address>");
		exit(EXIT_FAILURE);	
	}
	char** ip_interfaces = NULL;
	struct dirent *entry;
	DIR *dir = opendir("/sys/class/net/");

	if (!dir) {
		perror("Couldn't open directory");	
		exit(EXIT_FAILURE); 
	}
	int ip_interface_count = 0;
	while ((entry = readdir(dir)) != NULL) {
		// printf("to add ifce: %s\n", entry->d_name);
		if(strcmp(entry->d_name,".") != 0 && strcmp(entry->d_name,"..") != 0) {
			ip_interfaces = (char**)realloc(ip_interfaces, (ip_interface_count+1)*sizeof(char*));
			if(ip_interfaces) {
				ip_interfaces[ip_interface_count] = (char*)malloc((strlen(entry->d_name)+1)*sizeof(char));	
				// ip_interfaces[ip_interface_count] = entry->d_name;
				if (ip_interfaces[ip_interface_count]) {
					strcpy(ip_interfaces[ip_interface_count], entry->d_name);
				} else {
					perror("malloc()");
				}
				// ip_interfaces[ip_interface_count][strlen(entry->d_name)+1] = '\0';
				// printf("added ifce: %s\n", ip_interfaces[ip_interface_count]);
				// printf("ifce count %d\n", ip_interface_count);
				ip_interface_count++;
			} else { 
				perror("failed to add interface\n"); 
				exit(EXIT_FAILURE);
			}
		}
	}

	//	printf("\nall added interfaces: \n");
	//	for(int i = 0; i < ip_interface_count; i++) {
	//		printf("%s\n", ip_interfaces[i]);
	//	}
	int ifce_exist = 0;
	for(int i = 0; i < ip_interface_count; i++) {
		// printf("argv[1]: %s\n", argv[1]);
		// printf("ip_interface: %s\n", ip_interfaces[i]);
		if (strcmp(argv[1], ip_interfaces[i]) == 0) {
			ifce_exist = 1;
			break;	
		} 
	}

	if(!ifce_exist) {
		printf("Interface %s doesn't exist\n", argv[1]);
		exit(EXIT_FAILURE);
	}

	const char delim[2] = ".";
	char *ip_address = (char*)malloc(strlen(argv[2])*sizeof(char));
	strcpy(ip_address, argv[2]);
	char *ip_tokenized = strtok(ip_address, delim);
	int ip_digits = 4;  
	while (ip_tokenized != NULL) {
		ip_digits--;	
		if(ip_digits < 0) {
			printf("Invalid IPv4-format\n");
			exit(EXIT_FAILURE);
		}
		// printf("ip_tokenized part %d: %s\n", ip_digits, ip_tokenized);	
		for(int i = 0; ip_tokenized[i] != '\0'; i++) {
			// printf("is a digit?: %c\n", ip_tokenized[i]);
			if (!isdigit((unsigned char)ip_tokenized[i])) {
				printf("Invalid IPv4-format\n");
				exit(EXIT_FAILURE);
			}
		}
		ip_tokenized = strtok(NULL, delim);
	}

	set_ip(argv[2], argv[1]); 
	// minimal priveleges starts here
	setgid(65534);
	setuid(65534);
	// system call filtering starts here
	setup_syscall(true);
	closedir(dir);
	free(ip_interfaces);
	setup_syscall(false);


	exit(EXIT_SUCCESS);
}	
