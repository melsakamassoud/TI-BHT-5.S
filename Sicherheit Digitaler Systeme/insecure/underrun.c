#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TOTAL_LEN 1000

void usage() {
  puts("underrun <offset>");
  exit(EXIT_FAILURE); 
}

int main(int args, char *argv[]) {
  char *buf = (char *) malloc(TOTAL_LEN);
  memset(buf,0,TOTAL_LEN);
  char fragment[TOTAL_LEN];
  memset(fragment,'A',TOTAL_LEN);
  
  if(args != 2) usage();

  long offset = strtol(argv[1], NULL, 10);
  long len = TOTAL_LEN  - offset;
  memcpy(buf, fragment, len);
  puts(buf);
}

