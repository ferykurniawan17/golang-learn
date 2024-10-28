package repository

import (
	"go-lang/entity"

	"github.com/stretchr/testify/mock"
)

type CategoryRepositoryMock struct {
	Mock mock.Mock
}

func (repository *CategoryRepositoryMock) FindByID(id string) *entity.Category {
	arguments := repository.Mock.Called(id)

	if arguments.Get(0) == nil {
		return nil
	}

	category := arguments.Get(0).(*entity.Category)

	if category == nil {
		return nil
	}

	return category
}

func (repository *CategoryRepositoryMock) GetList() (*[]entity.Category, error) {
	arguments := repository.Mock.Called()

	if arguments.Get(0) == nil {
		return nil, arguments.Error(1)
	}

	categories := arguments.Get(0).(*[]entity.Category)

	if categories == nil {
		return nil, arguments.Error(1)
	}

	return categories, nil
}