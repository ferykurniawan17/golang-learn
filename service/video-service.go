package service

import (
	"go-lang/entity"
	"go-lang/repository"
)

type VideoService interface {
	Save(entity.VideoItem)
	Update(entity.VideoItem)
	Delete(entity.VideoItem)
	FindAll() []entity.VideoItem
	// GetDetail(int) entity.VideoItem
}

type videoService struct {
	videoRepository repository.VideoRepository
}

func New(repo repository.VideoRepository) VideoService {
	return &videoService{
		videoRepository: repo,
	}
}

func (service *videoService) Save(video entity.VideoItem) {
	service.videoRepository.Save(video)
}

func (service *videoService) FindAll() []entity.VideoItem {
	return service.videoRepository.FindAll()
}

func (service *videoService) Update(video entity.VideoItem) {
	service.videoRepository.Update(video)
}

func (service *videoService) Delete(video entity.VideoItem) {
	service.videoRepository.Delete(video)
}

// func (service *videoService) GetDetail(index int) *entity.VideoItem {
// 	// video := service.videos[index] 
// 	// return video
// 	return nil
// }