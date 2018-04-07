#!/usr/bin/env python
print(max([sum(map(int, list(str(a**b)))) for a in range(100) for b in range(100)]))
