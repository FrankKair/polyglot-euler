#!/usr/bin/env python

# Check if a pair sums up to the given sum
# [1, 2, 3, 9] and Sum = 8 returns false
# [1, 2, 4, 4] and Sum = 8 returns true

# Complexity: O(n^2)
def has_pair_with_sum_1(list, sum):
	for i in range(0, len(list)):
		for j in range(i+1, len(list)):
			if list[i] + list[j] == sum:
				return True
	return False

# Complexity: O(n)
def has_pair_with_sum_2(list, sum):
	low = 0
	high = len(list) - 1

	while low != high:
		s = list[low] + list[high]
		if s == sum:
			return True
		if s > sum:
			high -= 1
		else:
			low += 1
	return False

list = [-2, -1, 1, 2, 3, 4]

print has_pair_with_sum_1(list, 4), has_pair_with_sum_2(list, 4)
print has_pair_with_sum_1(list, 6), has_pair_with_sum_2(list, 6)
print has_pair_with_sum_1(list, 8), has_pair_with_sum_2(list, 8)
print has_pair_with_sum_1(list, 9), has_pair_with_sum_2(list, 9)
print has_pair_with_sum_1(list, 10), has_pair_with_sum_2(list, 10)
print has_pair_with_sum_1(list, 22), has_pair_with_sum_2(list, 22)
print has_pair_with_sum_1(list, 0), has_pair_with_sum_2(list, 0)
print has_pair_with_sum_1(list, -1), has_pair_with_sum_2(list, -1)
print has_pair_with_sum_1(list, -5), has_pair_with_sum_2(list, -5)
