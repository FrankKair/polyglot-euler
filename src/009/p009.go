package main

import "fmt"

func solve() int {
	product := 0
	for a := 0; a < 500; a++ {
		for b := a + 1; b < 500; b++ {
			c := 1000 - a - b
			sum := a + b + c
			if a*a+b*b == c*c && sum == 1000 {
				product = a * b * c
			}
		}
	}
	return product
}

func main() {
	result := solve()
	fmt.Println(result)
}
