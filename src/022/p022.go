package main

import (
	"fmt"
	"io/ioutil"
	"sort"
	"strings"
)

func loadNames() []string {
	file, err := ioutil.ReadFile("p022_names.txt")
	if err != nil {
		fmt.Println("Error reading file.")
	}

	namesString := strings.Replace(string(file), "\"", "", -1)
	names := strings.Split(namesString, ",")
	sort.Strings(names)
	return names
}

func solve() int {
	names := loadNames()
	sum := 0

	// Iterate over names
	for i := range names {
		nameScore := 0
		name := names[i]

		// Chars of name
		for j := range name {
			nameScore += int(name[j]) - 64
		}

		sum += nameScore * (i + 1)
	}

	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
