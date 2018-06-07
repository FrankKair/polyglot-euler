object Main {
  def gcd(a: Int, b: Int): Int = {
    if (b == 0) return a.abs
    gcd(b, a % b)
  }

  def lcm(a: Int, b: Int): Int = {
    (a * b).abs / gcd(a, b)
  }

  def solve(): Int = {
    (1 to 19).reduce((acc, x) => lcm(acc, x))
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
