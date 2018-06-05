#include <iostream>
#include <cmath>

using namespace std;

bool is_integer(double d) {
    return floor(d) == d;
}

bool is_prime(long n) {
    if (n == 2) {
        return true;
    }
    if (!n || n == 1 || n % 2 == 0) {
        return false;
    }
    for (long double i = 3; i <= sqrt(n); i += 2) {
        double result = (double) n / (double) i;
        if (is_integer(result)) {
            return false;
        }
    }
    return true;
}

long solve() {
    double value = 600851475143;
    double rest = value;
    double result = value;
    for (long i = 2; i <= sqrt(value); i++) {
        if (is_prime(i)) {
            double tmp = rest / i;
            while (is_integer(tmp) && floor(tmp) >= 1) {
                rest = tmp;
                tmp = rest / i;
                result = i;
            }
        }
        if (rest == 1) {
            return result;
        }
    }
    return result;
}

int main() {
    long result = solve();
    cout << result << endl;
}
