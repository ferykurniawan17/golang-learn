package repository

import (
	"go-lang/entity"

	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type VideoRepository interface {
	Save(video entity.VideoItem)
	Update(video entity.VideoItem)
	Delete(video entity.VideoItem)
	FindAll() []entity.VideoItem
	CloseDB()
}

type database struct {
	connection *gorm.DB
}

var db database

// CoseDB implements VideoRepository.
func (d *database) CloseDB() {
	sqlDB, err := d.connection.DB()
	if err != nil {
			panic("Failed to get database connection")
	}
	err = sqlDB.Close()
	if err != nil {
			panic("Failed to disconnect database")
	}
}

// Delete implements VideoRepository.
func (d *database) Delete(video entity.VideoItem) {
	if err := d.connection.Delete(&video).Error; err != nil {
		panic("Failed to Delete video: " + err.Error())
	}
}

// FindAll implements VideoRepository.
func (d *database) FindAll() []entity.VideoItem {
	var videos []entity.VideoItem
	if err := d.connection.Preload("Author").Find(&videos).Error; err != nil {
			panic("Failed to find videos: " + err.Error())
	}
	return videos
}

// Save implements VideoRepository.
func (d *database) Save(video entity.VideoItem) {
	if err := d.connection.Create(&video).Error; err != nil {
		panic("Failed to save video: " + err.Error())
	}
}

// Update implements VideoRepository.
func (d *database) Update(video entity.VideoItem) {
	if err := d.connection.Save(&video).Error; err != nil {
		panic("Failed to Update video: " + err.Error())
	}
}

func NewVideoRepository() VideoRepository {
	db, err := gorm.Open(sqlite.Open("sqlite.db"), &gorm.Config{})

	if err != nil {
		panic("Failed to connect database")
	}

	db.AutoMigrate(&entity.VideoItem{}, &entity.PersonItem{})

	return &database{
		connection: db,
	}
}
