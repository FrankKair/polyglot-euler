#!/usr/bin/env python


def selection_sort(list):
    for i in range(0, len(list) - 1):
        minimum = i
        for j in range(i + 1, len(list)):
            if list[minimum] > list[j]:
                minimum = j
        temp = list[i]
        list[i] = list[minimum]
        list[minimum] = temp


list = [2, 7, 4, 1, 5, 3]
selection_sort(list)
print list
