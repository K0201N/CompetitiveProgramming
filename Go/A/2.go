package main

import (
	"fmt"
)

func main() {
	var x, y, max int
	fmt.Scan(&x, &y)

	if x > y {
		max = x
	} else {
		max = y
	}

	fmt.Println(max)
}
