func solve() -> Int {
    return (0...999).filter { $0 % 3 == 0 || $0 % 5 == 0 }.reduce(0, +)
}

let result = solve()
print(result)
