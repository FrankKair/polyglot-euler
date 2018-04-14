extension String {
    var reversed: String {
        return String(self.reversed())
    }
}

extension Int {
    var isPalindrome: Bool {
        return String(self).reversed == String(self)
    }
}

func solve() -> Int {
    var largest = 0
    for x in (100...999) {
        for y in (100...999) {
            let product = x * y
            if product > largest && product.isPalindrome {
                largest = product
            }
        }
    }
    return largest
}

let result = solve()
print(result)
