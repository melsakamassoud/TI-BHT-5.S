#include <unistd.h>
#include <stdio.h>

int foo(long a, long b) {
  long x = 3;
  long y = 4;
  long z[2] =  { 5, 6 };
  printf("a:     0x%lx (0x%p)\n", a, &a);
  printf("b:     0x%lx (0x%p)\n", b, &b);
  printf("x:     0x%lx (0x%p)\n", x, &x);
  printf("y:     0x%lx (0x%p)\n", y, &y);
  printf("z[0]:  0x%lx (0x%p)\n", z[0], &z[0]);
  printf("z[1]:  0x%lx (0x%p)\n", z[1], &z[1]);
  printf("z[2]:  0x%lx (0x%p)\n", z[2], &z[2]);
  printf("z[3]:  0x%lx (0x%p)\n", z[3], &z[3]);
  printf("z[-1]: 0x%lx (0x%p)\n", z[-1], &z[-1]);
  printf("z[-2]: 0x%lx (0x%p)\n", z[-2], &z[-2]);
  printf("z[-3]: 0x%lx (0x%p)\n", z[-3], &z[-3]);
  
  return a+b;
}

int main() {
  int x = foo(1,2);
  printf("%d\n",x);
  printf("Address y: 0x%p\n", main);
}
