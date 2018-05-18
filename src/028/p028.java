public final class p028 {
    private static int solve() {
        int sum = 1;
        for (int i = 3; i < 1003; i += 2) {
            sum += 4*i*i - (6 * (i - 1));
        }
        return sum;
    }

    public static void main(String[] args) {
        int result = solve();
        System.out.println(result);
    }
}
