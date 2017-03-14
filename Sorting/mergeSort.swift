#!/usr/bin/env xcrun swift

func mergeSort(array: [Int]) -> [Int] {
	let mid = array.count / 2
	guard array.count > 1 else { return array }

	var leftArray = [Int]()
	var rightArray = [Int]()

	for index in 0..<mid {
		leftArray.append(array[index])
	}
	for index in mid..<array.count {
		rightArray.append(array[index])
	}

	return []
}

let a = [3, 4, 1, 2, 6, 23, 12, 7]
mergeSort(array: a)