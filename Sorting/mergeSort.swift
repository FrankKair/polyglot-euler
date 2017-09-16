#!/usr/bin/env xcrun swift
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftArray: leftArray, rightArray: rightArray)
}

private func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var ordered = [Int]()
    while i < leftArray.count && j < rightArray.count {
        if leftArray[i] < rightArray[j] {
        ordered.append(leftArray[i])
        i += 1
    } else {
        ordered.append(rightArray[j])
        j += 1
    } 
    }
    while i < leftArray.count {
        ordered.append(leftArray[i])
        i += 1
    }
    while j < rightArray.count {
        ordered.append(rightArray[j])
        j += 1
    }
    return ordered
}

let array = [3, 5, 24, 6, 2, 4, 8, 7]
print(mergeSort(array))