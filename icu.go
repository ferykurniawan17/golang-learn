package main

import (
	"fmt"

	"github.com/gotnospirit/messageformat"
)

func main() {
	message := `{count, plural, =0 {No messages} =1 {1 message} other {# messages}} for {user}`

	mf, err := messageformat.New()

	if err != nil {
		fmt.Println(err)
		return
	}

	formatter, err := mf.Parse(message)

	if err != nil {
		fmt.Println(err)
		return
	}

	counts := []int{0, 1, 2, 12}

	for _, count := range counts {
		res, err := formatter.FormatMap(map[string]interface{}{"count": count, "user": "Fery Kurniawan"})

		if err != nil {
			fmt.Println(err)
			return
		}

		fmt.Println(res)
	}
	

	messageStatic := "Hallo this is static message"

	formatterStatic, err := mf.Parse(messageStatic)

	if err != nil {
		fmt.Println(err)
		return
	}

	resStatic, err := formatterStatic.FormatMap(nil)

	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Println(resStatic)
}
