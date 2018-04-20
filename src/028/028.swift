func solve() -> Int {
    return stride(from: 3, to: 1003, by: 2).reduce(1) { (acc: Int, x: Int) in
        acc + (4 * x * x - (6 * (x - 1)))
    }
}

let result = solve()
print(result)
