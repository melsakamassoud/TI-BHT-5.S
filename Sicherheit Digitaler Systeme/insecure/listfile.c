#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  char *prefix = "ls -la ";
  int plen = strlen(prefix);
  
  for(int i=1;i< argc;i++) {
    int alen = strlen(argv[i]);

    char command[plen+alen+1];
    memcpy(command,prefix,plen);
    strcpy(command+plen,argv[i]);

    system(command);
  }
}
