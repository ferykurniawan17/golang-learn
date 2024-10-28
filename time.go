package main

import (
	"fmt"
	"time"
)

func main() {
	var now time.Time = time.Now()
	date := time.Date(2019, 1, 1, 0, 0, 0, 0, time.UTC)

	fmt.Println(time.Now())
	fmt.Println(date)

	var formatter string = "Monday, 02 January 2006"
	var timeString string = now.Format(formatter)

	fmt.Println("timeString:", timeString)

	// time, err := time.Parse(time.RFC3339, now.String())

	// if err != nil {
	// 	fmt.Println(err)
	// } else {
	// 	fmt.Println(time)
	// }
	
	fmt.Println(now.Format(formatter))

	t := time.Now()
	fmt.Println(t.String())
	fmt.Println(t.Format(formatter))
}