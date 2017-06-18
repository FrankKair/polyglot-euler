#!/usr/bin/env xcrun swift
func fibonnaci(n: Int) -> Int {
	guard n > 1 else { return n }
	return fibonnaci(n: n-2) + fibonnaci(n: n-1)
}

func fibonnaciMemoized(n: Int) -> Int {
    var cache = [0: 0, 1: 1]
    if let number = cache[n] { 
    	return number
    }
    cache[n] = fibonnaciMemoized(n: n-2) + fibonnaciMemoized(n: n-1)
    return cache[n]!
}

if let argument = Int(CommandLine.arguments[1]) {
	print(fibonnaci(n: argument))
	print(fibonnaciMemoized(n: argument))
}