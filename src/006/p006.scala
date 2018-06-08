object Main {
  def square(n: Int) = n * n

  def solve(): Int = {
    val numbers = 1 to 100
    square(numbers.sum) - numbers.map(square).sum
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
