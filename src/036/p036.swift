extension String {
    var palindrome: Bool {
        return String(self.reversed()) == self
    }
}

extension Int {
    func palindrome(base: Int) -> Bool {
        switch base {
        case 2: return String(self, radix: 2).palindrome
        case 10: return String(self).palindrome
        default: return false    
        }
    }

    func doubleBasePalindrome() -> Bool {
        return self.palindrome(base: 10) && self.palindrome(base: 2)
    }
}

func sumDoublePalindromeBelow(limit: Int) -> Int {
    return (1...limit).filter { $0.doubleBasePalindrome() }.reduce(0, +)
}


func solve() -> Int {
    return sumDoublePalindromeBelow(limit: 1000000)
}

let result = solve()
print(result)
