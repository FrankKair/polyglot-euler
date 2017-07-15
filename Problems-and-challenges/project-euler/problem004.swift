#!/usr/bin/env xcrun swift

// A palindromic number reads the same both ways. The largest palindrome
// made from the product of two 2-digit numbers is 9009 = 91 times 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

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
        let product = x*y
        if product > largest && product.isPalindrome {
            largest = product
        }
    }
}

print(largest)