package service

import (
	"go-lang/entity"
	"go-lang/repository"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

var categoryRepository = &repository.CategoryRepositoryMock{Mock: mock.Mock{}}
var categoryService = CategorySerivce{Repository: categoryRepository}

var categoryMock *entity.Category = &entity.Category{ID: "2", Name: "Fruit"}

func TestMain(m *testing.M) {

	// Set up before test code
	// Set up the mock
	categoryRepository.Mock.On("FindByID", "1").Return(nil)
	categoryRepository.Mock.On("FindByID", "2").Return(categoryMock)

	// Run the All test
	m.Run()
}

func TestGetCategory(t *testing.T) {
	t.Run("Test case 1 | Category Not found", func(t *testing.T) {
		// this will call the mock
		category, err := categoryService.GetCategory("1")

		assert.Nil(t, category)
		assert.NotNil(t, err)
		assert.Equal(t, "category not found", err.Error())
	})

	t.Run("Test case 2 | Category found", func(t *testing.T) {
		// this will call the mock
		category, err := categoryService.GetCategory("2")

		assert.NotNil(t, category)
		assert.Nil(t, err)
		assert.Equal(t, categoryMock, category)
		assert.Equal(t, categoryMock.ID, category.ID)
		assert.Equal(t, categoryMock.Name, category.Name)
	})
}