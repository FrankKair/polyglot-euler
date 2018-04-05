#!/usr/bin/env python
import itertools

def is_prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

for i in range(1000, 6670):
    if is_prime(i) and is_prime(i+3330) and is_prime(i+6660):
        perms = itertools.permutations(str(i))
        if tuple(str(i+3330)) in perms and tuple(str(i+6660)) in perms:
            print(str(i) + str(i+3330) + str(i+6660))
