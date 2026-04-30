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
#include <limits.h>
#include <sys/wait.h>

#define CHILD 0
#define PIPE_END_READ 0
#define PIPE_END_WRITE 1

struct payload {
        char ifname[IFNAMSIZ];
        char ip[INET_ADDRSTRLEN];
};

void set_ip(const char *ip, const char *dev) {
        struct ifreq ifr;
        int fd = socket(AF_INET, SOCK_DGRAM, 0);
        if (fd < 0) error(errno, errno, "socket");
        strncpy(ifr.ifr_name, dev, IFNAMSIZ - 1);
        ifr.ifr_name[IFNAMSIZ - 1] = '\0';

        struct sockaddr_in* addr = (struct sockaddr_in *) &ifr.ifr_addr;
        addr->sin_family = AF_INET;
        if (inet_pton(AF_INET, ip, &addr->sin_addr) != 1) error(0, errno, "inet_pton");
        if (ioctl(fd, SIOCSIFADDR, &ifr) == -1) error(0, errno, "SIOCSIFADDR");

        close(fd);
}

void allow_syscall(scmp_filter_ctx ctx, int syscall) {
        seccomp_rule_add(ctx, SCMP_ACT_ALLOW, syscall, 0);
}

void set_allow_list(scmp_filter_ctx ctx) {
        (void)ctx;
        allow_syscall(ctx, SCMP_SYS(close));
        allow_syscall(ctx, SCMP_SYS(exit_group));
}

static void setup_syscall(bool kill) {
        scmp_filter_ctx ctx;
        if (kill) {
                ctx = seccomp_init(SCMP_ACT_KILL);
                if (ctx) set_allow_list(ctx);
                else perror("seccomp_init()");
        } else {
                ctx = seccomp_init(SCMP_ACT_ALLOW);
                if (ctx) seccomp_rule_add(ctx, SCMP_ACT_KILL_PROCESS, SCMP_SYS(write), 0);
                else perror("seccomp_init()");
        }
        seccomp_load(ctx);
        seccomp_release(ctx);
}

void free_resources(char **ifs,
                int ifs_count,
                DIR *dir,
                char *ip_address
                ) {
        if (ifs) {
                for (int i = 0; i < ifs_count; i++) free(ifs[i]);
                free(ifs);
        }
        if (dir) closedir(dir);
        if (ip_address) free(ip_address);
}

int main(int argc,const char* argv[]) {

        int fdp[2];
        if (pipe(fdp) == -1) error(errno, errno, "pipe");
        pid_t pid = fork();
        if (pid == -1) error(errno, errno, "fork");

        if (pid != CHILD) {
                int status;
                struct payload data;

                close(fdp[PIPE_END_WRITE]);

                ssize_t r = read(fdp[PIPE_END_READ], &data, sizeof(data));
                if (r != sizeof(data)) {
                        close(fdp[PIPE_END_READ]);
                        waitpid(pid, &status, 0);
                        exit(EXIT_FAILURE);
                }

                close(fdp[PIPE_END_READ]);

                waitpid(pid, &status, 0);

                if (WIFEXITED(status)) {
                        int code = WEXITSTATUS(status);
                        if (code != 0) exit(EXIT_FAILURE);
                } else if (WIFSIGNALED(status)) {
                        exit(EXIT_FAILURE);
                }

                set_ip(data.ip, data.ifname);
                exit(EXIT_SUCCESS);
        } else {
                setgid(65534);
                setuid(65534);

                close(fdp[PIPE_END_READ]);
                setup_syscall(true);

                if(argc != 3) {
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                char **ip_interfaces = NULL;
                int ip_interface_count = 0;
                struct dirent *entry;
                DIR *dir = opendir("/sys/class/net/");
                char *ip_address = NULL;

                if (!dir) {
                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                while ((entry = readdir(dir)) != NULL) {
                        if(strcmp(entry->d_name,".") != 0 && strcmp(entry->d_name,"..") != 0) {
                                char **tmp = realloc(ip_interfaces, (ip_interface_count+1)*sizeof(char*));
                                if (!tmp) {
                                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                                        close(fdp[PIPE_END_WRITE]);
                                        exit(EXIT_FAILURE);
                                }
                                ip_interfaces = tmp;

                                ip_interfaces[ip_interface_count] = malloc(strlen(entry->d_name)+1);
                                if (!ip_interfaces[ip_interface_count]) {
                                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                                        close(fdp[PIPE_END_WRITE]);
                                        exit(EXIT_FAILURE);
                                }
                                strcpy(ip_interfaces[ip_interface_count], entry->d_name);
                                ip_interface_count++;
                        }
                }

                int ifce_exist = 0;
                for(int i = 0; i < ip_interface_count; i++) {
                        if (strcmp(argv[1], ip_interfaces[i]) == 0) {
                                ifce_exist = 1;
                                break;
                        }
                }

                if(!ifce_exist) {
                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                ip_address = malloc(strlen(argv[2]) + 1);
                if (!ip_address) {
                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                strcpy(ip_address, argv[2]);
                char *ip_token = strtok(ip_address, ".");

                char *endptr;
                int ip_digits = 4;
                long digit;

                while (ip_token != NULL) {
                        errno = 0;
                        digit = strtol(ip_token, &endptr, 10);
                        if (errno == ERANGE || endptr == ip_token || *endptr != '\0' || digit < 0 || digit > 255) {
                                free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                                close(fdp[PIPE_END_WRITE]);
                                exit(EXIT_FAILURE);
                        }
                        ip_digits--;
                        ip_token = strtok(NULL, ".");
                }

                if (ip_digits != 0) {
                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                struct payload data;
                strncpy(data.ifname, argv[1], IFNAMSIZ - 1);
                data.ifname[IFNAMSIZ - 1] = '\0';
                strncpy(data.ip, argv[2], INET_ADDRSTRLEN - 1);
                data.ip[INET_ADDRSTRLEN - 1] = '\0';

                ssize_t w = write(fdp[PIPE_END_WRITE], &data, sizeof(data));
                if (w != sizeof(data)) {
                        free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                        close(fdp[PIPE_END_WRITE]);
                        exit(EXIT_FAILURE);
                }

                free_resources(ip_interfaces, ip_interface_count, dir, ip_address);
                close(fdp[PIPE_END_WRITE]);
                exit(EXIT_SUCCESS);
        }
}
