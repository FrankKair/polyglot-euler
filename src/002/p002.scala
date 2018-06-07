import scala.math.pow
import scala.math.sqrt

object Main {
  def fib(n: Int): Int = {
    ((pow((1 + sqrt(5)), n) - pow((1 - sqrt(5)), n)) / (pow(2, n) * sqrt(5))).toInt
  }

  def solve(): Int = {
    var n = 0
    var fibValue = 0
    var fibSum = 0

    while (fibValue < 4e6) {
      if (fibValue % 2 == 0) fibSum += fibValue
      n += 1
      fibValue = fib(n)
    }

    fibSum
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
