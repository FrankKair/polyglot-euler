object Main {
  def solve(): Int = {
    BigInt(2).pow(1000).toString.view.map(char => char.asDigit).sum
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
