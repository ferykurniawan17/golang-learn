package validators

import (
	"strings"

	"github.com/go-playground/validator/v10"
)

func ValidatorCoolTitle(field validator.FieldLevel) bool {
	var conten string = field.Field().String()
	conten = strings.ToLower(conten)
	
	return strings.Contains(conten, "cool")
}