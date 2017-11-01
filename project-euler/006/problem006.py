#!/usr/bin/env python
def square(number):
    return number * number


squared_sum = sum([x * x for x in range(0, 101)])
square_of_the_sum = square(sum([x for x in range(0, 101)]))

print square_of_the_sum - squared_sum
