#!/usr/bin/env python
import sys

def fibonacci(x):
	if x <= 2:
		return x
	return fibonacci(x-1) + fibonacci(x-2)

def fibonacci_memoized(n):
	cache = {0: 1, 1: 1}
	if n in cache:
		return cache[n]
	cache[n] = fibonacci_memoized(n-1) + fibonacci_memoized(n-2)
	return cache[n]

x = int(sys.argv[1])
print fibonacci_memoized(x)