#include <iostream>
using namespace std;

#define LIMIT 1000

int solve() {
    int result = 5;
    for (int i = 3; i < LIMIT; i += 6) {
        int j = i;
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

    return result;
}

int main() {
    int result = solve();
    cout << result << endl;
}
