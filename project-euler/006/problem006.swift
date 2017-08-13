#!/usr/bin/env xcrun swift
extension Int {
  var squared: Int {
    return self * self
  }
}

let sumOfTheSquares = (0...100).map { $0 * $0 }.reduce(0, +)
let squareOfTheSum = (0...100).reduce(0, +).squared

print(squareOfTheSum - sumOfTheSquares)
