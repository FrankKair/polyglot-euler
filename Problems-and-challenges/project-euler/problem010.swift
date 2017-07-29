#!/usr/bin/env xcrun swift

func generatePrimesUpTo(_ number: Int) -> [Int] {
    var listOfNumbers = Set(2...number)
    for x in (2...number) {
        let numbersToRemove = listOfNumbers.filter { $0 % x == 0 && $0 != 2 }
        guard !numbersToRemove.isEmpty else { break }
        listOfNumbers.subtract(numbersToRemove)
    }

    return Array(listOfNumbers)
}

print(generatePrimesUpTo(2000000).reduce(0, +))