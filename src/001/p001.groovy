def solve = {
  (1..<1000).findAll { it % 3 == 0 || it % 5 == 0 }.sum()
}

def result = solve()
println(result)
