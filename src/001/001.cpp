#include <stdio.h>

#define LIMIT 1000

int main() {
    // This number will never be passed with this algorithm
    unsigned result = 5;
    for (unsigned i = 3; i < LIMIT; i += 6) {
        unsigned j = i;
        while (j < LIMIT) {
            result += j;
            if (!(j % 5)) {
                result += (j-5);
                if (j+5 < LIMIT) {
                    result += (j+5);
                }
            }
            //printf("result = %u, i = %u\n", result, j);
            j = j << 1;
        }
    }

    printf("Result is %u\n", result);
    return 0;
}
