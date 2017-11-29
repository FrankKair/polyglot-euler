#!/usr/bin/env xcrun swift
extension Int {
    var squareRootInt: Int { return Int(Float(self).squareRoot()) }
}

func generatePrimesUpTo(_ number: Int) -> [Int] {
    var listOfNumbers = Set(2...number)
    for x in (2...number.squareRootInt) {
        let numbersToRemove = listOfNumbers.filter { $0 % x == 0 && $0 != x }
        if !numbersToRemove.isEmpty {
          listOfNumbers.subtract(numbersToRemove)
        }
    }
    return Array(listOfNumbers)
}

print(generatePrimesUpTo(2000000).reduce(0, +))