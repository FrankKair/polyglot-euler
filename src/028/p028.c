#include <stdio.h>

int solve() {
    int sum = 0;
    for (int i = 3; i < 1003; i += 2) {
        sum += 4 * i * i - (6 * (i - 1));
    }
    return sum;
}

int main() {
    int result = solve();
    printf("%d\n", result);
}
