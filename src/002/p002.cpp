#include <iostream>
#include <stdlib.h>
#include <math.h>

using namespace std;

#define LIMIT 4000000
typedef long double LD;
typedef unsigned long long ULL;

LD phi = (sqrt(5) + 1) / 2;
LD phi_inverse = phi - 1;

ULL fib(int i) {
    return (ULL) ((pow(phi, i) - pow(-phi_inverse, i)) / sqrt(5));
}

ULL solve() {
    ULL result = 0;
    ULL fn = fib(2);
    for (int i = 3; fn < LIMIT; i++) {
        if (fn % 2 == 0) {
            result += fn;
        }
        fn = fib(i);
    }
    return result;
}

int main() {
    ULL result = solve();
    cout << result << endl;
}
