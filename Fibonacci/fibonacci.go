package main

import (
	"fmt"
	"os"
	"strconv"
)

func Fibonacci(x int) int {
	if x < 2 {
		return x
	}
	return Fibonacci(x-2) + Fibonacci(x-1)
}

func main() {
	input := os.Args[1]
	if i, err := strconv.Atoi(input); err == nil {
		fmt.Println(Fibonacci(i))
	}
}
