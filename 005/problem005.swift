#!/usr/bin/env xcrun swift

func greatestCommonDivisor(_ x: Int, _ y: Int) -> Int {
    var x = x
    var y = y
    while y != 0 {
        let mod = x % y
        x = y
        y = mod
    }
    return x
}

func leastCommonMultiple(_ x: Int, _ y: Int) -> Int {
    return x * y / greatestCommonDivisor(x, y)
}


let result = (1...20).reduce(1) { sum, x in
    leastCommonMultiple(sum, x)
}

print(result)
