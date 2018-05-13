package main

import "fmt"

func combination(n, k int) int {
	c := 1
	for i := 0; i < k; i++ {
		c *= n - i
		c /= i + 1
	}
	return c
}

func solve() int {
	return combination(40, 20)
}

func main() {
	result := solve()
	fmt.Println(result)
}
