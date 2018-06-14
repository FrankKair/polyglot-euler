import Foundation

extension Int {
    func factors() -> [Int] {
        let limit = Int(sqrt(Double(self)))
        return (2...limit).filter { self % $0 == 0 }
    }

    func isPrime() -> Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
    }
}

func solve() -> Int {
    return 600851475143.factors()
                        .filter { i in i.isPrime() }
                        .max()!
}

let result = solve()
print(result)
