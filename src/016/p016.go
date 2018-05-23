package main

import (
	"fmt"
	"math/big"
)

func bigExponential(input, exponent int64) *big.Int {
	number := big.NewInt(input)
	exp := big.NewInt(exponent)
	mod := big.NewInt(0)
	return number.Exp(number, exp, mod)
}

func solve() int {
	str := bigExponential(2, 1000).String()

	sum := 0
	for i := 0; i < len(str); i++ {
		// str is a string, so str[i]
		// is an ASCII char.
		// -48 is the offset to get
		// zero char as zero integer.
		sum += int(str[i] - 48)
	}

	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
