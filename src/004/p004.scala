object Main {
  def is_palindrome(num: Int): Boolean = {
    num.toString == num.toString.reverse
  }

  def main(args: Array[String]): Unit = {
    val maximum = (
      for {
        x <- (100 to 999)
        y <- (100 to 999)
      } yield(x * y)
    ).filter((num) => is_palindrome(num)).max

    println(maximum)
  }
}
