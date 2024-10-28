package main

import (
	"fmt"
	"regexp"
)

func main() {
	var regex *regexp.Regexp = regexp.MustCompile(`f[a-z][a-zA-Z]y`)

	fmt.Println(regex.MatchString("fery"))
	fmt.Println(regex.MatchString("feRy"))

	fmt.Println(regex.FindAllString("Fery fery fesy fe1y feey", 3))
}