#!/usr/bin/env python
from functools import reduce
import operator

fact = lambda n: reduce(operator.mul, range(1, n + 1)) if n > 0 else 1

print(sum([1 for r in range(1, 101) for n in range(r, 101) if fact(n)/(fact(r)*fact(n-r)) > 1e6]))
