package main

import "fmt"

func solve() int {
	sum := 1
	for i := 3; i < 1003; i += 2 {
		sum += 4*i*i - (6 * (i - 1))
	}
	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
