package entity

import "time"

type PersonItem struct {
	ID uint64 `gorm:"primary_key;auto_increment" json:"id"`
	FirstName string `gorm:"type:varchar(32)" json:"firstname" binding:"required"`
	LastName string `gorm:"type:varchar(32)" json:"lastname" binding:"required"`
	Age uint8 `gorm:"type:integer(100)" json:"age" binding:"required"`
	Email string `gorm:"type:varchar(256)" json:"email" binding:"required,email"`
}

type VideoItem struct {
	ID uint64 `gorm:"primary_key;auto_increment" json:"id"`
	Title string `gorm:"type:varchar(100)" json:"title" binding:"required,min=10" validate:"is-cool"`
	Description string `gorm:"type:varchar(200)" json:"description" binding:"min=10,max=200"`
	URL string `gorm:"type:varchar(256);UNIQUE" json:"url" binding:"required,url"`
	Author PersonItem `gorm:"foreignkey:PersonID" json:"author" binding:"required"`
	PersonID uint64 `json:"-"`
	CreatedAt time.Time `gorm:"default:CURRENT_TIMESTAMP" json:"created_at"`
	UpdatedAt time.Time `gorm:"default:CURRENT_TIMESTAMP" json:"updated_at"`
}