#include <string.h>
#include <stdio.h>
#include <stdbool.h>

#define SECRET_PASSWORD "strong password"
#define BUF_SIZE 80

int main() {
  bool correct_password = false;
  char pwd[BUF_SIZE];
  printf("%s", "Please enter Password: ");
  scanf("%s",pwd);

  if(!strcmp(pwd, SECRET_PASSWORD)) correct_password=true;
  
  if(correct_password) puts("Correct password");
  else puts("Wrong password");
}
