#!/usr/bin/env python
nums = []
for n in range(2, 20):
    lim_inf = 1
    while len(''.join([str(lim_inf * i) for i in range(1, n + 1)])) < 9:
        lim_inf += 1

    lim_sup = lim_inf
    num = '111111111'
    while len(num) == 9:
        num = ''.join([str(lim_sup * i) for i in range(1, n + 1)])
        if len(num) == 9 and '0' not in num and len(set(list(num))) == 9:
            nums.append(int(num))
        lim_sup += 1

print(max(nums))
