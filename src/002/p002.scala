import scala.math.pow
import scala.math.sqrt

object Main {
  def fib(n: Int): Int = {
    /*
     * Using Binet's Fibonacci Number
     * http://mathworld.wolfram.com/BinetsFibonacciNumberFormula.html
     */
    ((pow((1 + sqrt(5)), n) - pow((1 - sqrt(5)), n)) / (pow(2, n) * sqrt(5))).toInt
  }

  def main(args: Array[String]): Unit = {
    var n = 0
    var fib_value = 0
    var fib_sum = 0

    while (fib_value < 4e6) {
      if (fib_value % 2 == 0) fib_sum += fib_value
      n += 1
      fib_value = fib(n)
    }

    println(fib_sum)
  }
}
