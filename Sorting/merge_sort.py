#!/usr/bin/env python


def merge_sort(list):
    mid = len(list) // 2
    if len(list) > 1:
        left = []
        right = []
        for index in range(0, mid):
            left.append(list[index])
        for index in range(mid, len(list)):
            right.append(list[index])
        merge_sort(left)
        merge_sort(right)
        merge(left, right, list)
        return list


def merge(left, right, list):
    i = 0
    j = 0
    k = 0
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            list[k] = left[i]
            i += 1
        else:
            list[k] = right[j]
            j += 1
        k += 1
    while i < len(left):
        list[k] = left[i]
        i += 1
        k += 1
    while j < len(right):
        list[k] = right[j]
        j += 1
        k += 1


list = [3, 5, 24, 6, 2, 4, 8, 7]
print merge_sort(list)
