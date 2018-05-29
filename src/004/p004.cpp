#include <iostream>
using namespace std;

int reverse(int n) {
    int v = n, rv = 0;
    do {
        rv = (rv*10) + (v%10);
        v = v/10;
    } while (v > 0);
    return rv;
}

int solve() {
    int v = 0;
    for (int i = 999; i > 99; i--) {
        for (int j = 999; j > i-100; j--) {
            v = i * j;
            if (v == reverse(v)) {
                return v;
            }
        }
    }
    return 0;
}

int main() {
    int result = solve();
    cout << result << endl;
}
