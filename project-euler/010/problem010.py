#!/usr/bin/env python
import math

def square_root_as_int(x):
  return int(math.sqrt(x))

def generate_primes_up_to(number):
  list_of_primes = set(range(2, number + 1))
  for number in range(2, square_root_as_int(number) + 1):
    numbers_to_remove = [x for x in list_of_primes if x % number == 0 and x != number]
    if len(numbers_to_remove) > 0:
      list_of_primes.difference_update(numbers_to_remove)
  return list_of_primes

print(sum(generate_primes_up_to(2000000)))