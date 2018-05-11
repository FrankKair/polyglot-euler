package main

import (
	"fmt"
	"strconv"
)

func isPalindrome(input int) bool {
	str := strconv.Itoa(input)
	for i := 0; i < len(str)/2; i++ {
		if str[i] != str[len(str)-i-1] {
			return false
		}
	}
	return true
}

func solve() int {
	var largest int
	for i := 0; i < 1000; i++ {
		for j := 0; j < 1000; j++ {
			product := i * j
			if isPalindrome(product) && product > largest {
				largest = product
			}
		}
	}
	return largest
}

func main() {
	result := solve()
	fmt.Println(result)
}
