package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strings"
)

func reader() {
	input := strings.NewReader("Test File \nName: Fery\nLocation: Jakarta")
	reader := bufio.NewReader(input)

	for {
		line, _, err := reader.ReadLine()

		if err == io.EOF { break }

		fmt.Println(string(line))
	}
}

func writer() {
	var writer *bufio.Writer = bufio.NewWriter(os.Stdout)

	var content []string = []string{
		"Test File",
		"Name: Fery",
		"Location: Jakarta",
	}

	for _, item := range content {
		_, _ = writer.WriteString(item + "\n")
	}

	writer.Flush()

}

func main() {
	// reader()
	writer()
}