#include <stdio.h>

int solve() {
    int i, n = 0;
    for (i = 1; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            n += i;
        }
    }
    return n;
}

int main() {
    int result = solve();
    printf("%d\n", result);
}
