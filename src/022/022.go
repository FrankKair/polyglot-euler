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
	numberOfNames := len(names)

	sum := 0
	// Iterate over names
	for i := 0; i < numberOfNames; i++ {
		nameScore := 0
		nameSize := len(names[i])

		// Chars of name
		for j := 0; j < nameSize; j++ {
			nameScore += int(names[i][j]) - 64
		}

		sum += nameScore * (i + 1)
	}

	return sum
}

func main() {
	result := solve()
	fmt.Println(result)
}
