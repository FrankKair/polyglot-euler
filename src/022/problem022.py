#!/usr/bin/env python
import re, string

name_score = lambda name: sum([string.ascii_uppercase.index(c) + 1 for c in name])

with open('src/022/p022_names.txt', 'r') as f:
    x = f.readlines()

names = re.findall('[A-Z]{1,}', x[0])
names.sort()

print(sum([(pos + 1) * name_score(name) for pos, name in enumerate(names)]))
