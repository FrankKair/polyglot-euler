#include <stdio.h>
#include <math.h>

long pow_list[10];

long fib_first(long n) {
    /*
     * Get first 9 digits of a Fibonacci number, given its index.
     *
     * This is a manipulation using log10 of the computation by rounding:
     *      Fn = round(phi^n/sqrt(5))
     * where phi is the golden ratio.
     *
     * https://en.wikipedia.org/wiki/Fibonacci_number#Computation_by_rounding
     */
    /* This is a mathematical manipulation of Binet's formula */

    double x = n * log10((sqrt(5) + 1)/2) + log10(1/sqrt(5)); // x is log10(Fn)
    return (long)pow(10, (x - (int)x + 8));
}

int pandigital(long n) {
    /*
     * Check if a number is 1-9 pandigital usign bitwise operations.
     * Translated to C from https://goo.gl/mKJong
     */

    // We need each digit of a 9 digit number isolated
    int j, v = 0;
    for (j = 1; j <= 9; j++) {
        int d = (int)((n % pow_list[j])/pow_list[j - 1]); // gets digit d[j]
        v |= (1 << d);
        n -= d * pow_list[j - 1];
    }
    return (v == 1022);
}

int main() {
    /*
     * Solves the problem using a simple Fibonacci sequence.
     *
     * Keep in mind that `a` and `b` will only keep the value of the
     * last 9 digits of the Fibonacci number. This is very important
     * to use only needed resources.
     */
    long i = 1, a = 1, b = 1, aux;

    for (i = 0; i <= 9; i++) {
        pow_list[i] = pow(10, i);
    }

    for (i = 3; i < 1000000; i++) { // A big number of terms
        aux = a;
        a = b;
        b = (aux + b) % 1000000000; // To keep only last 9 digits

        if (b < 123456789) {
            // We don't want that have zeroes in it.
            continue;
        }

        if (pandigital(b) && pandigital(fib_first(i))) {
            printf("%lu\n", i);
            break;
        }
    }
    return(0);
}
