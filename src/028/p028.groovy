def solve = {
  def sum = 1
  3.step 1003, 2, { i ->
    sum += 4 * i * i - (6 * (i - 1))
  }
  sum
}

def result = solve()
println(result)
