package main

import (
	"encoding/base64"
	"fmt"
)

func main() {
	var name string = "Fery Kurniawan"

	var encoded = base64.StdEncoding.EncodeToString([]byte(name))

	fmt.Println(encoded)

	decoded, err := base64.StdEncoding.DecodeString(encoded)
	if err == nil {
		fmt.Println("Byte:", decoded)
		fmt.Println("String:", string(decoded))
	} else {
		fmt.Println(err.Error())
	}

	var encoded2 = base64.StdEncoding.EncodeToString(decoded)
	fmt.Println(encoded2)
}