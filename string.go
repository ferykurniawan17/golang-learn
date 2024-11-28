package main

import "fmt"

func main() {
	var name string = "Fery Kurniawan"

	fmt.Println(len(name))

	query := fmt.Sprintf(`(1 / (1 + %v)) * %v + (poi.search_popularity * %v)`, "HALLLOOOOOO", 0.1, 0.6)

	fmt.Println(query)
}