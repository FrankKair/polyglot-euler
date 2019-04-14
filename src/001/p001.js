function solve() {
  return Array(999)
    .fill(0)
    .map((value, index) => index + 1)
    .filter(value => value % 3 === 0 || value % 5 === 0)
    .reduce((sum, value) => sum + value)
}

const result = solve()
console.log(result)
