package main

import "fmt"

func solve() int {
	sum := 1
	for i := 3; i < 1003; i++ {
		if i%2 == 0 {
			continue
		}
		sum += 4*i*i - (6 * (i - 1))
	}
	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
