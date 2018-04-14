extension Int {
    var squared: Int {
        return self * self
    }
}

func solve() -> Int {
    let sumOfTheSquares = (0...100).map { $0.squared }.reduce(0, +)
    let squareOfTheSum = (0...100).reduce(0, +).squared
    return squareOfTheSum - sumOfTheSquares
}

let result = solve()
print(result)
