package main

import (
	"encoding/csv"
	"io"
	"os"
	"strings"
)

type Employee struct {
	FirstName, LastName string
}

func createCSV(emloyees []Employee) {
	write := csv.NewWriter(os.Stdout)

	_ = write.Write([]string{
		"No",
		"First Name",
		"Last Name",
	})

	for i, item := range emloyees {
		_ = write.Write([]string{
			string(i + 1),
			item.FirstName,
			item.LastName,
		})
	}

	write.Flush()
}

func main() {
	csvString := "Fery,Kurniawan\n" +
		"Almira,Araminta\n" +
		"Zeline,Gaizka\n";

	render := csv.NewReader(strings.NewReader(csvString))

	employes := []Employee{}

	for {
		record, err := render.Read()

		if err == io.EOF {
			break;
		}

		employes = append(employes, Employee{
			FirstName: record[0],
			LastName: record[1],
		})

		// fmt.Println(record[0], record[1])
	}

	// fmt.Println("Jumlah Employee", len(employes))
	// fmt.Println(employes[0].FirstName)
	// fmt.Println(employes[0].LastName)

	// for i, item := range employes {
	// 	fmt.Printf("Employe %v dengan nama %v %v\n", i + 1, item.FirstName, item.LastName)
	// }

	createCSV(employes)
}