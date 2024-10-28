package main

import (
	"fmt"
	"reflect"
	"strconv"
)

type PersonItem struct {
	FirstName string `required:"true" max:"10"`;
	LastName string `required:"true"`;
	Age int `required:"false"`;
}

type HobbyItem struct {
	Name string
}

func readStructField(value any) {
	var valueType reflect.Type = reflect.TypeOf(value)
	fmt.Println("Value Type", valueType)

	for i := 0; i < valueType.NumField(); i++ {
		var field = valueType.Field(i)
		fmt.Printf("Field %d: %v\n", i, field.Name)
		
		isRequired, err := strconv.ParseBool(field.Tag.Get("required"))
		maxLength := field.Tag.Get("max")
		fmt.Printf("Field %d: %v\n", i, maxLength)
		if err == nil && isRequired {
			fmt.Printf("Field %d: is required\n", i)
		}
	}
}

func isValid(value any) (valid bool, errors []string) {
	var valueType reflect.Type = reflect.TypeOf(value)
	var val reflect.Value = reflect.ValueOf(value)

	for i := 0; i < valueType.NumField(); i++ {
		var field = valueType.Field(i)
		data := val.Field(i).Interface()

		var requiredInfo string = field.Tag.Get("required")
		isRequired, err := strconv.ParseBool(requiredInfo)

		if (err == nil) {
			if (isRequired) {
				if (data == "") {
					var message string = fmt.Sprintf("Required field %v", field.Name)
					errors = append(errors, message)

					valid = false

					continue
				}
			}
		}

		var maxStr string = field.Tag.Get("max")
		max, err := strconv.Atoi(maxStr)

		if (err == nil) {
			if (len(data.(string)) > max) {
				var message string = fmt.Sprintf("Karakter %v lebih dari %v", field.Name, maxStr)
				errors = append(errors, message)
				valid = false
			}
		}
	}

	return valid, errors
}

func main() {
	// readStructField(PersonItem{ "John", "Doe", 30 })
	// readStructField(HobbyItem{ "Reading" })

	valid, err := isValid(PersonItem{
		FirstName: "Fery Kurniawan",
		LastName: "Fery Kurniawan",
		Age: 25,
	})

	if (len(err) > 0 && !valid) {
		for _, val:= range err {
			fmt.Println(val)
		}
	} else {
		fmt.Println("Field VALID")
	}
}