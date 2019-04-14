from functools import reduce
import operator

fact = lambda n: reduce(operator.mul, range(1, n + 1))

print(sum(map(int, list(str(fact(100))))))
