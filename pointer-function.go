package main

import "fmt"

type Office struct {
	name, address, country string
	totalEmployee uint16
}

func changeOfficeName(office Office, name string) {
	office.name = name
}

func main() {
	var indonesiaOffice Office = Office{
		name: "Indonesia Office",
		address: "Jl. Jendral Sudirman No. 1",
		country: "Indonesia",
		totalEmployee: 150,
	};

	fmt.Println(indonesiaOffice) // Output: {Indonesia Office Jl. Jendral Sudirman No. 1 Indonesia 150}

	changeOfficeName(indonesiaOffice, "Jakarta Office")

	fmt.Println(indonesiaOffice)

}