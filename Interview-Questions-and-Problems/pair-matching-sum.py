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

list = [1, 2, 3, 4]
print has_pair_with_sum_1(list, 6)
print has_pair_with_sum_1(list, 8)