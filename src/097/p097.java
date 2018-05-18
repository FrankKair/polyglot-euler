import java.math.BigInteger;

public final class p097 {
    private static BigInteger solve() {
        BigInteger multiplier = BigInteger.valueOf(2).pow(7_830_457);
        BigInteger mod = BigInteger.valueOf(10_000_000_000L);

        return BigInteger.valueOf(28_433)
                .multiply(multiplier)
                .add(BigInteger.ONE)
                .remainder(mod);
    }

    public static void main(String[] args) {
        BigInteger result = solve();
        System.out.println(result);
    }
}
