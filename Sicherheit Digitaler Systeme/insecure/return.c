#include<stdio.h>
#include <stdlib.h>

int main();

void magic() {
  unsigned long int x[1] = {42};
  x[2] = (unsigned long int) (main);
  system("/usr/bin/xcalc");
  exit(1);
  printf("%lu\n\n",*x);
}

void output() {
  unsigned long int x[1] = { 10 };
  x[2] = (unsigned long int) magic;
  
  printf("%lu\n",*x);
}

int main() {
  output();
}
