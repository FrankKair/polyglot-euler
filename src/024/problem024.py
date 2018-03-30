#!/usr/bin/env python
import itertools

perms = itertools.permutations('0123456789')

i, n = 0, 1000000
while i < n - 1:
	next(perms)
	i += 1

print(''.join(next(perms)))
