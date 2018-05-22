package main

import (
	"fmt"
	"strconv"
)

func palindrome(input string) bool {
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			return false
		}
	}
	return true
}

func numberPalindrome(input, base int) bool {
	input64 := int64(input)
	number := strconv.FormatInt(input64, base)
	return palindrome(number)
}

func doubleBasePalindrome(input int) bool {
	return numberPalindrome(input, 10) && numberPalindrome(input, 2)
}

func sumDoublePalindromeBelow(limit int) int {
	sum := 0
	for i := 1; i < limit; i++ {
		if doubleBasePalindrome(i) {
			sum += i
		}
	}
	return sum
}

func solve() int {
	return sumDoublePalindromeBelow(1000000)
}

func main() {
	result := solve()
	fmt.Println(result)
}
