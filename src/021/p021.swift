extension Int {
    func factors() -> Set<Int> {
        var factors: Set<Int> = [1]
        let floatInput = Float(exactly: self)!
        let upperBound = Int(floatInput.squareRoot() + 1)
        for x in (2...upperBound) {
            guard self % x == 0 else { continue }
            factors.insert(x)
            factors.insert(self / x)
        }
        return factors
    }

    func amicable() -> Bool {
        let factorsSum = self.factors().reduce(0, +)
        guard self != factorsSum else { return false }
        return self == factorsSum.factors().reduce(0, +)
    }
}

func solve() -> Int {
    return (1...10000).filter { $0.amicable() }.reduce(0, +)
}

let result = solve()
print(result)
