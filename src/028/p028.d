import std.stdio;

int solve() {
    int sum = 1;
    for (int i = 3; i < 1003; i += 2) {
        sum += 4 * i * i - (6 * (i - 1));
    }
    return sum;
}

void main() {
    int result = solve();
    writeln(result);
}
