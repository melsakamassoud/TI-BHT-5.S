#include <stdio.h>

int main() {
  char buf[100];

  int len =  scanf("%s",buf);
  printf("len: %d, ",len);
  puts(buf);

  for(int i=0; i<10;i++) printf("%c", buf[i]);
  puts("")
  
}
