func solve() -> Int {
    var a = 1
    var b = 2
    var sum = 0

    while b < 4000000 {
        if b % 2 == 0 {
            sum += b
        }
        let temp = b
        b = a + b
        a = temp
    }

    return sum
}

let result = solve()
print(result)
