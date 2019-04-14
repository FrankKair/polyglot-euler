function solve() {
  let sum = 0
  let a = 1
  let b = 1

  while (b < 4000000) {
    if (b % 2 === 0) {
      sum += b
    }
    const temp = b
    b = a + b
    a = temp
  }
  return sum
}

const result = solve()
console.log(result)
