#include<iostream>
using namespace std;

bool isPrime(int x) {
    if (x % 2 == 0) {
        return false;
    }

    for (int i = 2; i < x; i++) {
        if (x % i == 0) {
            return false;
        }
    }

    return true;
}

int solve() {
    unsigned long sum = 2;
    int LAST_PRIME = 2000000;
    int p = 3;

    while (p < LAST_PRIME) {
        if (isPrime(p)) {
            sum += p;
        }
        p++;
    }

  return sum;
}

int main() {
  int result = solve();
  cout << result << endl;
}
