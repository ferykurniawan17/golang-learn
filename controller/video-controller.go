package controller

import (
	"go-lang/entity"
	"go-lang/service"
	"go-lang/validators"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/go-playground/validator/v10"
)

type VideoController interface {
	FindAll() []entity.VideoItem
	Save(ctx *gin.Context) error
	Update(ctx *gin.Context) error
	Delete(ctx *gin.Context) error
	// GetDetail(index int) *entity.VideoItem
}

type videoController struct {
	service service.VideoService
}

var validate *validator.Validate

func New(service service.VideoService) VideoController {
	validate = validator.New()

	validate.RegisterValidation("is-cool", validators.ValidatorCoolTitle)

	res := videoController{
		service: service,
	}
	return &res
}

func (c *videoController) FindAll() []entity.VideoItem {
	return c.service.FindAll()
}

func (c *videoController) Save(ctx *gin.Context) error {
	var video entity.VideoItem

	err := ctx.ShouldBindJSON(&video)
	if err != nil {
		return err
	}

	err = validate.Struct(video)
	if err != nil {
		return err
	}

	c.service.Save(video)
	return nil
}

func (c *videoController) Update(ctx *gin.Context) error {
	var video entity.VideoItem

	err := ctx.ShouldBindJSON(&video)
	if err != nil {
		return err
	}

	id, err := strconv.ParseUint(ctx.Param("id"), 0, 0)
	if err != nil {
		return err
	}

	video.ID = id

	err = validate.Struct(video)
	if err != nil {
		return err
	}

	c.service.Update(video)
	return nil
}

func (c *videoController) Delete(ctx *gin.Context) error {
	var video entity.VideoItem
	id, err := strconv.ParseUint(ctx.Param("id"), 0, 0)

	if err != nil {
		return err
	}

	video.ID = id

	c.service.Delete(video)
	return nil
}

// func (c *videoController) GetDetail(index int) *entity.VideoItem {
// 		videos := c.service.FindAll()
//     if len(videos) > index {
//         return &videos[index]
//     }
//     return nil
// }