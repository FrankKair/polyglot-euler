public class p015 {
    private static long combination(long n, long k) {
        long c = 1;
        for (long i = 0; i < k; i++) {
            c *= n - i;
            c /= i + 1;
        }
        return c;
    }

    private static long solve() {
        return combination(40, 20);
    }

    public static void main(String[] args) {
        long result = solve();
        System.out.println(result);
    }
}
