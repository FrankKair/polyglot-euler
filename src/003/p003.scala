import scala.math.sqrt

object Main {
  def is_prime(n: Int): Boolean = {
    if (n == 2 || n == 3) return true
    if (n % 2 == 0) return false

    for (i <- 3 until sqrt(n).toInt by 2)
      if (n % i == 0) return false

    true
  }

  def main(args: Array[String]): Unit = {
    var n = 600851475143L
    var f = 2
    var s = Set[Int]()

    while (n > 1) {
      if (n % f == 0) {
        n = (n / f).toLong
        s += f
      } else {
        f += 1
      }
    }

    println(s.last)
  }
}
