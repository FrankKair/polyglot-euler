#!/usr/bin/env xcrun swift
extension String {
    var reversed: String {
        return String(self.characters.reversed())
    }
}

extension Int {
    var isPalindrome: Bool {
        return String(self).reversed == String(self)
    }
}

var largest = 0
for x in (100...999) {
    for y in (100...999) {
        let product = x * y
        if product > largest && product.isPalindrome {
            largest = product
        }
    }
}

print(largest)
