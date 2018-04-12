extension Int {
    var squared: Int { return self * self }
}

func isPythagorean(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    return a.squared + b.squared == c.squared
}

func solve() -> Int {
    var product = 0

    for a in (1...500) {
        for b in (a...500) {
            let c = 1000 - a - b
            let sum = a + b + c
            if isPythagorean(a, b, c) && sum == 1000 {
                product = a * b * c
                break
            }
        }
    }
    return product 
}

let result = solve()
print(result)
