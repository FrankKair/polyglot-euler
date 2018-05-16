object Main {
  def gcd(a: Int, b: Int): Int = {
    if (b == 0) return a.abs
    return gcd(b, a%b);
  }

  def lcm(a: Int, b: Int): Int = {
    (a * b).abs/gcd(a, b);
  }

  def main(args: Array[String]): Unit = {
    println((1 to 19).reduceLeft((acc, x) => lcm(acc, x)));
  }
}
