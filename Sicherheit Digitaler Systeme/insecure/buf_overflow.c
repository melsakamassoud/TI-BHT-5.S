#include <stdio.h>

int main () {
  int foo = 0;
  char buf[80];

  scanf("%s",buf);

  if(foo == 0x00010203) puts("you win!");
}
