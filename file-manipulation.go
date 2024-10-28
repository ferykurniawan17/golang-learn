package main

import (
	"bufio"
	"io"
	"os"
)

func createFile(name string, content string) error {
	file, err := os.OpenFile(name, os.O_CREATE|os.O_WRONLY, 0666)

	if err != nil {
		return err
	}

	defer file.Close()

	file.WriteString(content)
	return nil
}

func addToFile(name string, content string) error {
	file, err := os.OpenFile(name, os.O_RDWR|os.O_APPEND, 0666)

	if err != nil {
		return err
	}

	defer file.Close()

	file.WriteString(content)
	return nil
}

func readFile(name string) (content string, errorRes error) {
	file, err := os.OpenFile(name, os.O_RDONLY, 0666)
	errorRes = nil

	if err != nil {
		return "", err
	}

	defer file.Close()

	loader := bufio.NewReader(file)

	for {
		line, _, err := loader.ReadLine()
		if (err == io.EOF) {
			errorRes = err
			break
		}

		content += string(line) + "\n"
	}

	return content, nil
}

func main() {
	// Crete FIle
	// createFile("sample.log", "Test File \nName: Fery\nLocation: Jakarta")


	// Read File
	// content, err := readFile("sample.log")

	// if err != nil {
	// 	fmt.Println("Error", err.Error())
	// } else {
	// 	fmt.Println("Content", content)
	// }

	// Append
	addToFile("sample.log", "\nTest File \nName: Fery\nLocation: Jakarta")
}