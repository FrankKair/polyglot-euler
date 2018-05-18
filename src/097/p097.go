package main

import (
	"fmt"
	"math/big"
)

func solve() int64 {
	num := big.NewInt(2)
	multiplier := big.NewInt(28433)
	exp := big.NewInt(7830457)
	mod := big.NewInt(1e10)

	prime := num.Exp(num, exp, mod).Mul(num, multiplier)

	one := big.NewInt(1)
	prime = prime.Add(prime, one)

	return prime.Int64() % 1e10
}

func main() {
	result := solve()
	fmt.Println(result)
}
