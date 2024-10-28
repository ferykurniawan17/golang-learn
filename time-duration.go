package main

import (
	"fmt"
	"time"
)

func main() {
	var duration1 time.Duration = time.Second * 100
	var duration2 time.Duration = time.Minute * 2
	var duration3 time.Duration = duration2 - duration1

	fmt.Println("duration3:", duration3)
}