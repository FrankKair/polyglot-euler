import std.stdio;

long combination(long n, long k) {
    long c = 1;
    for (long i = 0; i < k; i++) {
        c *= n - i;
        c /= i + 1;
    }
    return c;
}

long solve() {
    return combination(40, 20);
}

void main() {
    long result = solve();
    writeln(result);
}
