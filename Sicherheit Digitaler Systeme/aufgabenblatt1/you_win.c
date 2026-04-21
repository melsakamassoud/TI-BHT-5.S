#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

// a) Eingabe: AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA (mind. mehr als 10 Zeichen) 
// b)
enum {BUFFER_SIZE = 10};

int main () {
	int check1 = 0;
	char buffer [ BUFFER_SIZE ];
	int check2 = 0;

	fgets(buffer, 10, stdin);

	if (check1 || check2) puts ("You Win") ;

	return EXIT_SUCCESS;
}
