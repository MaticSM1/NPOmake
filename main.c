#include <stdio.h>

#define TEST "Nek test pac"

#ifdef __x86_64__
    #define ARHITURA "64"
#else
    #define ARHITURA "32"
#endif

void test() {
    printf("dober dan svet, kako kaj\n %s \n%s\n", TEST, ARHITURA);
}

int main() {
    test();
    return 0;
}