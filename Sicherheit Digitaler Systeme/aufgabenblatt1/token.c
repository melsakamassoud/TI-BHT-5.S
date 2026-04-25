#include <stdio.h>
#include <string.h>

int main() {
	char str[] = "127.1.2.3";
	const char s[2] = ".";
	char *token;

	/* erstes Token abrufen */
	token = strtok(str, s);

	/* weitere Tokens abrufen */
	while( token != NULL ) {
		printf( "Token: %s\n", token );
		token = strtok(NULL, s);
	}
	return 0;
}

