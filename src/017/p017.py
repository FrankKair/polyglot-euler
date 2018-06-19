#!/usr/bin/env python


def words(n):
    u = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',\
        'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', \
        'eighteen', 'nineteen']

    d = [
        'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty',
        'ninety'
    ]

    if n == 0:
        return ''

    if n <= len(u):
        return u[n - 1]

    if n < 100:
        word = d[n // 10 - 2]
        if n % 10 != 0:
            word += words(n % 10)
        return word

    suffix = words(n - (n // 100) * 100)
    word = u[n // 100 - 1] + 'hundred'
    if suffix:
        word += 'and' + suffix
    return word


print(len(''.join(words(i) for i in range(1, 1000)) + 'onethousand'))
