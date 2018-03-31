#!/usr/bin/env python
from functools import reduce
import operator

fact = lambda n: reduce(operator.mul, range(1, n + 1)) if n > 0 else 1
sfact = lambda n: sum(map(fact, map(int, list(str(n))))) == n

print(sum([i for i in range(10, 2540160) if sfact(i)]))
