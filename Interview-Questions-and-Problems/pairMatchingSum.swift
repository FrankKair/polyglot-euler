#!/usr/bin/env xcrun swift

// Complexity O(n) - Ordered lists only
func hasPairWithSum(list: [Int], sum: Int) -> Bool {
    var low = 0
    var high = list.count-1

    while low != high {
        let s = list[low] + list[high]
        if s == sum {
            return true
        }
        if s > sum {
            high -= 1
        } else {
            low += 1
        }
    }
    return false
}

//Complexity: O(n) - Works for unordered lists
func hasPairWithSum2(list: [Int], sum: Int) -> Bool {
    for number in list {
        let complement = sum - number
        if list.contains(complement) && list.index(of: number) != list.index(of: complement) {
            return true
        }
    }
    return false
}

let list = [-2, -1, 1, 2, 3, 4]

print(hasPairWithSum(list: list, sum: 4), hasPairWithSum2(list: list, sum: 4))
print(hasPairWithSum(list: list, sum: 6), hasPairWithSum2(list: list, sum: 6))
print(hasPairWithSum(list: list, sum: 8), hasPairWithSum2(list: list, sum: 8))
print(hasPairWithSum(list: list, sum: 9), hasPairWithSum2(list: list, sum: 9))
print(hasPairWithSum(list: list, sum: 10), hasPairWithSum2(list: list, sum: 10))
print(hasPairWithSum(list: list, sum: 22), hasPairWithSum2(list: list, sum: 22))
print(hasPairWithSum(list: list, sum: 0), hasPairWithSum2(list: list, sum: 0))
print(hasPairWithSum(list: list, sum: -1), hasPairWithSum2(list: list, sum: -1))
print(hasPairWithSum(list: list, sum: -5), hasPairWithSum2(list: list, sum: -5))
