#include <iostream>
#include <cmath>

using namespace std;

bool isInteger(double d) {
    return floor(d) == d;
}

bool isPrime(long n) {
    if (n == 2) {
        return true;
    }
    if (!n || n == 1 || n % 2 == 0) {
        return false;
    }
    for(long double i = 3; i <= sqrt(n); i += 2) {
        double result = (double) n / (double) i;
        if (isInteger(result)) {
            return false;
        }
    }
    return true;
}

long solve(double value) {
    double rest = value;
    double result = value;
    for (long i = 2; i <= sqrt(value); i++) {
        if (isPrime(i)) {
            double tmp = rest / i;
            while (isInteger(tmp) && floor(tmp) >= 1) {
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

int main(int argc, char** argv) {
    double value = 600851475143;
    long result = solve(value);
    cout << result << endl;
}
