package service

import (
	"errors"
	"go-lang/entity"
	"go-lang/repository"
)

type CategorySerivce struct {
	Repository repository.CategoryRepository;
}

func (service CategorySerivce) GetCategory(id string) (*entity.Category, error) {
	caregory := service.Repository.FindByID(id);

	if caregory == nil {
		return nil, errors.New("category not found");
	}

	return caregory, nil;
}