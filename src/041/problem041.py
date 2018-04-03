#!/usr/bin/env python
pandigital = lambda n: len(set(range(1, len(n))) - set(map(int, list(n)))) == 0

def is_prime(n):
    if n == 2 or n == 3: return True
    if n % 2 == 0 or n < 2: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False    

    return True

# Pandigital numbers are divisible by 3, except 4 and 7 digit ones
for i in range(7654321, 1, -2):
    if is_prime(i) and pandigital(str(i)):
        print(i)
        break
