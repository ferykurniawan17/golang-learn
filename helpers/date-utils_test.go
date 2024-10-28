package helpers

import (
	"fmt"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
)

func TestDateNow(t *testing.T) {
	result := DateNow()

	date := time.Now();

	if result.Year() != date.Year() {
		panic("Tahun tidak sesuai")
	}

	if int(result.Month()) != int(date.Month()) {
		panic("Bulan tidak sesuai")
	}

	if result.Day() != date.Day() {
		panic("hari tidak sesuai")
	}
}

func TestDateNowAssert(t *testing.T) {
	result := DateNow()

	date := time.Now();

	assert.Equal(t, date.Year(), result.Year(), fmt.Sprintf("Year should be %v", date.Year()))
	assert.NotEqual(t, date.Year(), result.Year(), fmt.Sprintf("Year should be %v not", date.Year()))
}