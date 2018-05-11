package main

import "fmt"

func solve() int {
	n := 600851475143
	limit := n / 2
	i := 3

	for i < limit {
		for n%i == 0 {
			n = n / i
			limit = n / 2
		}
		i += 2
	}
	return n
}

func main() {
	result := solve()
	fmt.Println(result)
}
