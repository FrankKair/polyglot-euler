#include <stdio.h>

int main() {
    int i, n = 0;
    for (i = 1; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            n += i;
        }
    }
    printf("%d", n);
    return(0);
}
