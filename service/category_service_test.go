package service

import (
	"fmt"
	"go-lang/entity"
	"go-lang/repository"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

var categoryRepository = &repository.CategoryRepositoryMock{Mock: mock.Mock{}}
var categoryService = CategorySerivce{Repository: categoryRepository}

var categoryMock *entity.Category = &entity.Category{ID: "2", Name: "Fruit"}

var categoriesMock *[]entity.Category = &[]entity.Category{
	{ID: "1", Name: "Electronic"},
	{ID: "2", Name: "Fruit"},
	{ID: "3", Name: "Vegetable"},
}

func TestMain(m *testing.M) {

	// Set up before test code
	// Set up the mock
	// Setup mock for function FindByID from CategoryRepository
	categoryRepository.Mock.On("FindByID", "1").Return(nil)
	categoryRepository.Mock.On("FindByID", "2").Return(categoryMock)

	// Mocking CategoryRepository.GetList
	categoryRepository.Mock.On("GetList").Return(categoriesMock, nil)

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

func TestGetListCategory(t *testing.T) {
	t.Run("Test case 1 | Get List Category", func(t *testing.T) {
		// this will call the mock
		categories, err := categoryService.GetList()

		assert.NotNil(t, categories)
		assert.Nil(t, err)
		assert.NotEqual(t, 0, len(*categories))

		fmt.Println("Categories", categories)
	})
}

// go test -v -run=Nsdfs -bench=.
func BenchmarkCategory(b *testing.B) {

	// Benchmarking the GetCategory and GetList function
	b.Run("Benchmark GetCategory", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			categoryService.GetCategory("2")
		}
	})

	// Benchmarking the GetList function
	b.Run("Benchmark GetList", func(b *testing.B) {
		for i := 0; i < b.N; i++ {
			categoryService.GetList()
		}
	})
}
