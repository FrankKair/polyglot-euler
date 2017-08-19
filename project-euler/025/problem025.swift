#!/usr/bin/env xcrun swift

var index = 3
var a: Double = 1
var b: Double = 2

while String(b).characters.count < 1000 {
  let temp = b
  b = a + b
  a = temp
  index += 1
}

print(index)