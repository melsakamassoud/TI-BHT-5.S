#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// a) Eingabe: AAAAAAAAAAxcalc
// b) Auf dem Stack liegen die buffer übereinander.
//    Ein überschreiben des name buffers schreibt in den cmd buffer.
//    Der clear cmd wird überschrieben und mit xcalc überschrieben.
// c)
int main() {
	char cmd[6];
	strcpy(cmd,"clear");

	char name[10];
	fgets(name, 10, stdin);

	system(cmd) ;
	printf("Hallo %s\n",name);
}
