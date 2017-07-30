#!/usr/bin/env python

def divisible_to(number, upper_bound):
	for x in range(1, upper_bound):
		if number % x != 0:
			return False
	return True

x = 1
while not divisible_to(x, 20):
	x += 1
print x