#include <arpa/inet.h>
#include <dirent.h>
#include <fcntl.h>
#include <libgen.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include "poet.h"

#include "helper.h"

static const byte_t key [KEYLEN] = {0 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 ,11 ,12 ,13 ,14 ,15};

void usage() {
	fputs("Usage: ./client file\n", stderr);
	exit(EXIT_FAILURE);
}

void send_file(int fd, int sockfd, const char *filename) {
	poet_ctx_t ctx;

	byte_t iv[IVLEN];

	if (getrandom(iv, IVLEN, 0) != IVLEN)
		ERROR("getrandom");

	byte_t fn_len = strlen(filename);

	size_t header_len = IVLEN + 1 + fn_len;
	byte_t *header = malloc(header_len);

	memcpy(header, iv, IVLEN);
	header[IVLEN] = fn_len;
	memcpy(header + IVLEN + 1, filename, fn_len);

	keysetup(&ctx, key);
	process_header(&ctx, header, header_len);

	if (write(sockfd, header, header_len) != (ssize_t)header_len)
		ERROR("sending header");

	byte_t mi[BLOCKLEN];
	byte_t next[BLOCKLEN];
	byte_t ci[BLOCKLEN];
	byte_t tag[TAGLEN];

	int n = read(fd, mi, BLOCKLEN);

	if (n < 0)
		ERROR("read");

	if (n < BLOCKLEN) {

		encrypt_final(&ctx, mi, n, ci, tag);

		if (write(sockfd, ci, n) != n)
			ERROR("sending ciphertext");

		if (write(sockfd, tag, TAGLEN) != TAGLEN)
			ERROR("sending tag");

		free(header);
		return;
	}

	while (true) {

		int next_n = read(fd, next, BLOCKLEN);

		if (next_n < 0)
			ERROR("read");

		if (next_n < BLOCKLEN) {

			encrypt_final(&ctx, mi, BLOCKLEN, ci, tag);

			if (write(sockfd, ci, BLOCKLEN) != BLOCKLEN)
				ERROR("sending ciphertext");

			if (write(sockfd, tag, TAGLEN) != TAGLEN)
				ERROR("sending tag");

			break;
		}

		encrypt_block(&ctx, mi, ci);

		if (write(sockfd, ci, BLOCKLEN) != BLOCKLEN)
			ERROR("sending ciphertext");

		memcpy(mi, next, BLOCKLEN);
	}

	free(header);
}

int open_server_connection(const char *ip, const int port) {
	int sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd < 0)
		ERROR("socket");

	struct sockaddr_in server_addr;
	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(port);
	server_addr.sin_addr.s_addr = inet_addr(ip);

	if (connect(sockfd, (struct sockaddr *)&server_addr, sizeof(server_addr)) == -1)
		ERROR("connect");

	return sockfd;
}

int main(int args, char *argv[]) {
	if (args != 2)
		usage();

	char *filename = basename(argv[1]);
	if (strlen(filename) > MAX_FILENAME_LEN) {
		fprintf(stderr, "%s: %s\n", filename, strerror(ENAMETOOLONG));
		return ENAMETOOLONG;
	}

	int fd = open(argv[1], O_RDONLY);
	if (fd < 0)
		ERROR(argv[1]);

	int sockfd = open_server_connection(SERVER_IP, SERVER_PORT);
	send_file(fd, sockfd, filename);

	close(fd);
	close(sockfd);
}
