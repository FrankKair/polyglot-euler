#!/usr/bin/env xcrun swift
let result = (0...999).filter { $0 % 3 == 0 || $0 % 5 == 0 }.reduce(0, +)
print(result)