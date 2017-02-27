#!/usr/bin/env python

columns = 4
rows = 3
matrix = [[0 for x in range(columns)] for y in range(rows)]
matrix[0] = [-5, -2, 3, 5]
matrix[1] = [-4, -1, 6, 7]
matrix[2] = [7, 8, 9, 11]

# O(n^2)
def negative_numbers_in_sorted_matrix(matrix):
	negative_count = 0
	for i in range(len(matrix)):
		for j in range(len(matrix[i])):
			if matrix[i][j] < 0:
				negative_count += 1
	return negative_count

print negative_numbers_in_sorted_matrix(matrix)