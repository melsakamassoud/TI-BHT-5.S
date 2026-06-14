#include <arpa/inet.h>
#include <fcntl.h>
#include <libgen.h>
#include <pthread.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>
#include "poet.h"

#include "helper.h"

static const byte_t key [KEYLEN] = {0 ,1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 ,11 ,12 ,13 ,14 ,15};

void write_file (int sockfd) {
	byte_t iv[IVLEN];
	byte_t fn_len;

	if (read(sockfd, iv, IVLEN) != IVLEN) {
		WARN("reading iv failed");
		return;
	}

	if (read(sockfd, &fn_len, sizeof(byte_t)) != sizeof(byte_t)) {
		WARN("reading filename len failed");
		return;
	}

	char filename[MAX_FILENAME_LEN + 1];

	if (read(sockfd, filename, fn_len) != fn_len) {
		WARN("reading filename failed");
		return;
	}

	filename[fn_len] = '\0';

	size_t header_len = IVLEN + 1 + fn_len;
	byte_t *header = malloc(header_len);

	memcpy(header, iv, IVLEN);
	header[IVLEN] = fn_len;
	memcpy(header + IVLEN + 1, filename, fn_len);

	char encname[MAX_FILENAME_LEN + 5];
	snprintf(encname, sizeof(encname), "%s.enc", filename);

	int encfd = open(encname, O_CREAT | O_WRONLY | O_EXCL, 0664);
	if (encfd < 0) {
		WARN(encname);
		free(header);
		return;
	}

	if (write(encfd, iv, IVLEN) != IVLEN) {
		WARN("write iv");
		close(encfd);
		free(header);
		return;
	}

	while (true) {
		byte_t buf[BUF_LEN];

		int n = read(sockfd, buf, BUF_LEN);

		if (n < 0) {
			WARN("read");
			close(encfd);
			free(header);
			return;
		}

		if (n == 0)
			break;

		if (write(encfd, buf, n) != n) {
			WARN("write");
			close(encfd);
			free(header);
			return;
		}
	}

	close(encfd);

	struct stat st;

	if (stat(encname, &st)) {
		WARN(encname);
		free(header);
		return;
	}

	off_t cipher_len = st.st_size - IVLEN - TAGLEN;

	int encin = open(encname, O_RDONLY);
	if (encin < 0) {
		WARN(encname);
		free(header);
		return;
	}

	int plain = open(filename, O_CREAT | O_WRONLY | O_TRUNC, 0664);
	if (plain < 0) {
		WARN(filename);
		close(encin);
		free(header);
		return;
	}

	byte_t tag[TAGLEN];

	if (lseek(encin, -TAGLEN, SEEK_END) == -1) {
		WARN("lseek");
		close(encin);
		close(plain);
		free(header);
		return;
	}

	if (read(encin, tag, TAGLEN) != TAGLEN) {
		WARN("tag");
		close(encin);
		close(plain);
		free(header);
		return;
	}

	if (lseek(encin, IVLEN, SEEK_SET) == -1) {
		WARN("lseek");
		close(encin);
		close(plain);
		free(header);
		return;
	}

	poet_ctx_t ctx;

	keysetup(&ctx, key);
	process_header(&ctx, header, header_len);

	off_t remaining = cipher_len;

	while (remaining > BLOCKLEN) {
		block ci;
		block mi;

		if (read(encin, ci, BLOCKLEN) != BLOCKLEN) {
			WARN("read");
			close(encin);
			close(plain);
			free(header);
			return;
		}

		decrypt_block(&ctx, ci, mi);

		if (write(plain, mi, BLOCKLEN) != BLOCKLEN) {
			WARN("write");
			close(encin);
			close(plain);
			free(header);
			return;
		}

		remaining -= BLOCKLEN;
	}

	byte_t ci[BLOCKLEN];
	byte_t mi[BLOCKLEN];

	if (read(encin, ci, remaining) != remaining) {
		WARN("read");
		close(encin);
		close(plain);
		free(header);
		return;
	}

	int rc = decrypt_final(&ctx, ci, remaining, tag, mi);

	printf("%s: remaining=%ld rc=%d\n",
			filename,
			(long)remaining,
			rc);

	if (rc != SUCCESS) {
		close(encin);
		close(plain);

		unlink(filename);
		unlink(encname);

		free(header);
		return;
	}

	if (write(plain, mi, remaining) != remaining) {
		WARN("write");
		close(encin);
		close(plain);
		free(header);
		return;
	}

	close(encin);
	close(plain);

	unlink(encname);

	free(header);
}

void *client_handler(void *sockfd) {
	int *socket = sockfd;
	write_file(*socket);

	close(*socket);
	free(sockfd);
	return NULL;
}

int open_server_socket(const char *ip, int port) {
	int sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd < 0)
		ERROR("socket");

	struct sockaddr_in server_addr;
	bzero(&server_addr, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(port);
	server_addr.sin_addr.s_addr = inet_addr(ip);

	if (bind(sockfd, (struct sockaddr *)&server_addr,
				sizeof(struct sockaddr_in)) != 0)
		ERROR("bind");

	if (listen(sockfd, 10) != 0)
		ERROR("listen");
	return sockfd;
}

int main() {
	int sockfd = open_server_socket(SERVER_IP, SERVER_PORT);

#ifndef DEBUG
	if (daemon(true, true) == -1)
		ERROR("daemon");
#endif

	pthread_t t;
	struct sockaddr_in new_addr;
	while (true) {
		socklen_t addr_size = sizeof(new_addr);
		int *sockp = malloc(sizeof(int));
		*sockp = accept(sockfd, (struct sockaddr *)&new_addr, &addr_size);

		if (pthread_create(&t, NULL, client_handler, sockp))
			WARN("pthread_create");
		pthread_detach(t);
	}
}
