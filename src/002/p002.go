package main

import "fmt"

func solve() int {
	a := 1
	b := 2
	sum := 0

	for b < 4000000 {
		if b%2 == 0 {
			sum += b
		}
		a, b = b, a+b
	}
	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
