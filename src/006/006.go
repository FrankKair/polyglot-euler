package main

import "fmt"

func solve() int {
	sumOfTheSquares, sum := 0, 0

	for i := 1; i < 100; i++ {
		sumOfTheSquares += i * i
		sum += i
	}

	squareOfTheSum := sum * sum

	return squareOfTheSum - sumOfTheSquares
}

func main() {
	result := solve()
	fmt.Println(result)
}
