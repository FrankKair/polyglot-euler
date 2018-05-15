package main

import "fmt"

func gcd(a, b int) int {
	for b > 0 {
		mod := a % b
		a, b = b, mod
	}
	return a
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func smallestDividedBy(limit int) int {
	result := 1
	for i := 2; i < limit; i++ {
		result = lcm(result, i)
	}
	return result
}

func solve() int {
	// Smallest number divisible by range 1 to 20.
	return smallestDividedBy(20)
}

func main() {
	result := solve()
	fmt.Println(result)
}
