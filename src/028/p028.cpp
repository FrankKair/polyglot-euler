#include <iostream>
using namespace std;

#define LIMIT 1003

int solve() {
    int sum = 1;
    for (int i = 3; i < LIMIT; i += 2) {
        sum += 4 * i * i - (6 * (i - 1));
    }
    return sum;
}

int main() {
    int result = solve();
    cout << result << endl;
}
