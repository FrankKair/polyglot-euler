#include <iostream>
using namespace std;

int solve() {
    int a = 3;
    int b = 5;
    int max = 1000;
    int n = (max - 1) / a;  
    int sum = n * (n + 1) * a;
    n = (max - 1) / b;
    sum += n * (n + 1) * b;
    int p = a * b;
    n = (max - 1) / p;
    sum -= n * (n + 1) * p;
    return sum >> 1;
}

int main() {
    int result = solve();
    cout << result << endl;
}
