object Main {
  def solve(): Int = {
    (0 to 999).filter((x) => ((x % 3) == 0 || (x % 5) == 0)).sum
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}