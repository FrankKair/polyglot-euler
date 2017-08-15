#!/usr/bin/env python

columns = 4
rows = 3
matrix = [[0 for x in range(columns)] for y in range(rows)]
matrix[0] = [-6, -3, -2, -1]
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

# O(n)
def negative_numbers_in_sorted_matrix_2(matrix):
  negative_count = 0
  rows = len(matrix)
  columns = len(matrix[0])
  j = 0 # Column index
  i = 0 # Row index

  while j < columns and i < rows:
    if matrix[i][j] < 0:
      negative_count += 1
      j += 1
      if j == columns:
        i += 1
        j = 0
    else:
      i += 1 # Change row
      j = 0 # Reset column
  return negative_count

print negative_numbers_in_sorted_matrix(matrix)
print negative_numbers_in_sorted_matrix_2(matrix)