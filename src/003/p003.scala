object Main {
  def solve(): Int = {
    var n = 600851475143L
    var f = 2
    var set = Set[Int]()

    while (n > 1) {
      if (n % f == 0) {
        n = (n / f).toLong
        set += f
      } else {
        f += 1
      }
    }

    set.last
  }

  def main(args: Array[String]): Unit = {
    val result = solve()
    println(result)
  }
}
