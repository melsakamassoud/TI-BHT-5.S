#include <readline/readline.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#define SECRET_PASSWORD "strong password"

int main() {
  bool correct_password = false;
  char *pwd = readline("Please enter Password: ");

  if(!strcmp(pwd, SECRET_PASSWORD)) correct_password=true;
  
  if(correct_password) puts("Correct password");
  else puts("Wrong password");

  free(pwd);
}
