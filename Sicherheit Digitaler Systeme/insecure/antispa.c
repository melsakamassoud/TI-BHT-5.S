#include<stdio.h>
#include <string.h>

int main() {
  char buf1[9];
  char buf2[9];

  scanf("%s",buf1);

  if( !strcmp(buf2,"password") ) puts("You win!");
  else puts("You Lose");
}
