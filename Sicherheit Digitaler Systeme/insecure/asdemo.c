#include <stdlib.h>

int main() {
  int *a = malloc(100);
  a[0] = 0;
  int res = a[100];
  return res;
}
