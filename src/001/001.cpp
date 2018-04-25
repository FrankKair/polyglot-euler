#include <stdio.h>

#define LIMIT 1000

int main() {
    unsigned long long result = 5;
    for (unsigned long long i = 3; i < LIMIT; i += 6) {
        unsigned long long j = i;
        while (j < LIMIT) {
            result += j;
            if (!(j % 5)) {
                result += (j-5);
                if (j + 5 < LIMIT) {
                    result += (j+5);
                }
            }
            j = j << 1;
        }
    }

    printf("Result is %llu\n", result);
    return 0;
}
