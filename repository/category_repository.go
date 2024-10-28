package repository

import "go-lang/entity"

type CategoryRepository interface {
	FindByID(id string) *entity.Category;
	GetList() (*[]entity.Category, error);
}
