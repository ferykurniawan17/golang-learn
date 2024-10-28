package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"os"
)

// Create New File
func createFileCSV(filename string, content []string) error {
	_, err := os.Stat(filename)

	var isFileExist bool = err == nil

	if (isFileExist) {
		content = content[1:]
	}

	file, err := os.OpenFile(filename, os.O_CREATE|os.O_WRONLY, 0666)

	if err != nil {
		return err
	}

	defer file.Close()

	for _, line := range content {
		file.WriteString(line + "\n")
	}

	return nil
}

// Append new line
func appendCSV(filename string, content []string) error {
	content = content[1:]

	file, err := os.OpenFile(filename, os.O_RDWR|os.O_APPEND, 0666)

	if err != nil {
		return err
	}

	defer file.Close()

	// file.WriteString("\n")
	for _, line := range content {
		file.WriteString(line + "\n")
	}

	return nil
}

// Read file from CSV
func readFileCSV(filename string) (content []string, erroInfo error) {
	file, err := os.OpenFile(filename, os.O_RDONLY, 0666)

	if err != nil {
		return content, err
	}

	defer file.Close()

	reader := bufio.NewReader(file)

	for {
		line, _, err := reader.ReadLine()

		if err == io.EOF {
			break
		}

		content = append(content, string(line))
	}

	return content, nil
}

func deleteFileCsv(filename string) {
	err := os.Remove(filename)

	if err != nil {
		fmt.Println("Failed to remove", filename)
		return
	}

	fmt.Println("Success to remove", filename)
}

func main() {
	var action *string = flag.String("action", "create", "action file")

	flag.Parse()

	var filename string = "kartu-keluarga.csv"

	var content []string = []string{
		"First Name,Middle Name,Last Name",
		"Fery,,Kurniawan,",
		"Almira,Araminta,Indriyanti",
		"Zeline,Naura,Gaizka",
	}

	if *action == "create" {
		createFileCSV(filename, content)
	} else if *action == "read" {
		data, err := readFileCSV(filename)

		if err != nil {
			fmt.Println(err.Error())
			return
		}

		for _, item := range data {
			fmt.Println(item)
		}

	} else if *action == "append" {
		err := appendCSV(filename, content)

		if err != nil {
			fmt.Println(err.Error())
		}
	} else if *action == "delete" {
		deleteFileCsv(filename)
	}
}