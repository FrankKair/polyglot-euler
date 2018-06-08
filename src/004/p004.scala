object Main {
  def isPalindrome(num: Int): Boolean = {
    num.toString == num.toString.reverse
  }

  def solve(): Int = {
    val maximum = (
      for {
        x <- (100 to 999)
        y <- (100 to 999)
      } yield(x * y)
    ).filter(num => isPalindrome(num)).max

    maximum
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
