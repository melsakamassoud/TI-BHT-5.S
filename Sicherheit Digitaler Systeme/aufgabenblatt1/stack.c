#include <unistd.h>
#include <stdio.h>

#define PLEN sizeof(long *)
#pragma GCC diagnostic ignored "-Warray-bounds"
int foo(long a, long b) {
	long x = 3;
	long y = 4;
	long z[2] = { 5, 6 };
	long *rbp;
#if defined(__x86_64__) || defined(__amd64__)
	__asm__ ("mov %%rbp, %0" : "=r" (rbp));
#else
	rbp = &z[6];
#endif
	printf("BP: <%p>\n",rbp);
	printf("a: %lx <rbp>%ld\n", a, (&a-rbp)*PLEN);
	printf("b: %lx <rbp>%ld\n", b, (&b-rbp)*PLEN);
	printf("x: %lx <rbp>%ld\n", x, (&x-rbp)*PLEN);
	printf("y: %lx <rbp>%ld\n", y, (&y-rbp)*PLEN);

	for(int i=0;i<6;i++)
		printf("z[%d]: %lx <rbp>%ld\n", i, z[i], (&z[i]-rbp)*PLEN);
	printf("ret: 0x%lx <rbp>%+ld\n", z[7], (&z[7]-rbp)*PLEN);

	return a+b;
}

int main() {
	int x = foo(1,2);
	if(x == 3) printf("main: %p\n", main);
}
