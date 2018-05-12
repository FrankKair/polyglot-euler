func combination(_ n: Int, _ k: Int) -> Int {
    return (0...k-1).reduce(1) { (acc: Int, i: Int) in acc * (n - i) / (i + 1) }
}

func solve() -> Int {
    return combination(40, 20)
}

let result = solve()
print(result)
