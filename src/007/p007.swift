func sieveOfEratosthenes(_ bound: Int) -> [Int] {
    var primes = (0...bound).map { $0 == 2 || $0 & 1 != 0 }

    var num = 3
    while num * num <= bound {
        var j = num * num

        while j <= bound {
            primes[j] = false
            j += num
        }
        num += 2
    }

    return primes.enumerated().flatMap { (index: Int, value: Bool) -> Int? in
        if index == 1 { return nil }
        guard value == true else { return nil }
        return index
    }
}

func solve() -> Int {
    return sieveOfEratosthenes(1000000)[10000]
}

let result = solve()
print(result)

