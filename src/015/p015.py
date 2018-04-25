#!/usr/bin/env python

from functools import reduce
import operator

fact = lambda n: reduce(operator.mul, range(1, n + 1))

print(fact(40)/(fact(20)*fact(20)))
