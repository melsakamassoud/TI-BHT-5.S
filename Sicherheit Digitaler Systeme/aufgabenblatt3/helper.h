#pragma once

#include <errno.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/random.h>

#define BUF_LEN 1024
#define MAX_FILENAME_LEN 255
#define SERVER_PORT 12345
#define SERVER_IP "127.0.0.1"
#define ERROR(msg)                                                             \
{                                                                            \
	perror(msg);                                                               \
	exit(errno);                                                               \
}
#define WARN(msg) perror(msg);

typedef unsigned char byte_t;

#define IVLEN 16
#define KEYLEN 16 
