import std.stdio;

int sum_even_fibs_below(int limit) {
    int a = 1;
    int b = 2;
    int sum = 0;

    while (b < limit) {
        if (b % 2 == 0) {
            sum += b;
        }
        int temp = b;
        b = a + b;
        a = temp;
    }
    return sum;    
}

int solve() {
    return sum_even_fibs_below(4000000);
}

void main() {
    int result = solve();
    writeln(result);
}
