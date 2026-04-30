 #include <unistd.h>
 #include <stdio.h>


int main(int args, char *argv[]) {
  for(int i=0; i < 20; i++) {
    printf("begin: %d\n", i);
    sleep(3);
    if(fork()) return 0;
    printf("end: %d\n", i);
  }
  return 0;
}
  
