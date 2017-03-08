#!/usr/bin/env python

array = [1, -3, 2, 1, -1, 4, 3, 1, 1, -8]

# Kadane's Algorithm - O(n)
# Returns the sum, not the list/array
def maximum_subarray_sum(list):
    max_ending_here = max_so_far = 0
    for number in list:
        max_ending_here = max(0, max_ending_here + number)
        max_so_far = max(max_so_far, max_ending_here)
    return max_so_far

print maximum_subarray_sum(array)