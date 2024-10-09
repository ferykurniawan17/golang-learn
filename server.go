package main

import (
	"go-lang/controller"
	"go-lang/middlewares"
	"go-lang/repository"
	"go-lang/service"
	"io"
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
)

var (
	videoRepository repository.VideoRepository = repository.NewVideoRepository()
	videoService service.VideoService = service.New(videoRepository)
	videoController controller.VideoController = controller.New(videoService)
)

func setupLogOutput() {
	f, _ := os.Create("gin.log")
	gin.DefaultWriter = io.MultiWriter(f, os.Stdout)
}

func main() {
	defer videoRepository.CloseDB()

	setupLogOutput()

	server := gin.New()

	server.Use(
		gin.Recovery(),
		middlewares.Logger(),
		middlewares.BasicAuth(),
	)

	server.GET("/videos", func(ctx *gin.Context) {
		ctx.JSON(200, videoController.FindAll())
	})

	server.POST("/videos", func(ctx *gin.Context) {
		err := videoController.Save(ctx);

		if err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{
				"error": err.Error(),
			})
		} else {
			ctx.JSON(http.StatusOK, gin.H{
				"message": "Video success saved!",
			})
		}
	})

	server.PUT("/videos/:id", func(ctx *gin.Context) {
		err := videoController.Update(ctx);

		if err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{
				"error": err.Error(),
			})
		} else {
			ctx.JSON(http.StatusOK, gin.H{
				"message": "Video success updated!",
			})
		}
	})

	server.DELETE("/videos/:id", func(ctx *gin.Context) {
		err := videoController.Delete(ctx);

		if err != nil {
			ctx.JSON(http.StatusBadRequest, gin.H{
				"error": err.Error(),
			})
		} else {
			ctx.JSON(http.StatusOK, gin.H{
				"message": "Video success deleted!",
			})
		}
	})

	// server.GET("/videos/:id", func(ctx *gin.Context) {
	// 	indexParam := ctx.Param("id")
	// 	id, err := strconv.Atoi(indexParam)

	// 	if err != nil {
	// 		ctx.JSON(http.StatusBadRequest, gin.H{
	// 			"error": "Invalid Index format",
	// 		})
	// 		return
	// 	}

	// 	res := videoController.GetDetail(id)
	// 	if res == nil {
	// 		msg := fmt.Sprintf("Cannot find record with index %v", indexParam)
	// 		ctx.JSON(http.StatusBadRequest, gin.H{
	// 			"error": msg,
	// 		})
	// 		return
	// 	}

	// 	ctx.JSON(200, res)
	// })

	server.Run(":8000")
}
