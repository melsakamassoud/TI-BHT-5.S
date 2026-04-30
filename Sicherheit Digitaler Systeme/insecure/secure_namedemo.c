#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>

int main() {
  char *name = readline("Please enter your name: ");
  puts(name);
}
