#include <stdio.h>
#include <stdlib.h>

int test(int);
int main(int argc, char **argv) { printf("%d", test(atoi(argv[1]))); }
