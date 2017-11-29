#!/usr/bin/env python
def generate_collatz_sequence_starting_at(number):
    list_of_numbers = []
    next_num = number
    while next_num != 1:
        list_of_numbers.append(next_num)
        if next_num % 2 == 0:
            next_num = next_num / 2
        else:
            next_num = (3 * next_num) + 1
    list_of_numbers.append(next_num)
    return list_of_numbers


size_of_longest_sequence = 0
largest_starting_number = 0
number = 1

while number != 1000000:
    number += 1
    length = len(generate_collatz_sequence_starting_at(number))
    if length > size_of_longest_sequence:
        size_of_longest_sequence = length
        largest_starting_number = number

print largest_starting_number
