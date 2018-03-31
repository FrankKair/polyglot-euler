#!/usr/bin/env python
w = 0

for x1 in range(200, -1, -200):
    for x2 in range(x1, -1, -100):
        for x3 in range(x2, -1, -50):
            for x4 in range(x3, -1, -20):
                for x5 in range(x4, -1, -10):
                    for x6 in range(x5, -1, -5):
                        for x7 in range(x6, -1, -2):
                            w += 1

print(w)
