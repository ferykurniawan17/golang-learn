// package main

// import (
// 	"fmt"
// 	"io"
// 	"net/http"
// 	"strings"
// )

// func main() {

//   url := "http://localhost:8000/videos"
//   method := "POST"

//   payload := strings.NewReader(`{
//     "title": "Video 1",
//     "description": "description 1",
//     "url": "https://video.com/1"
// }`)

//   client := &http.Client {
//   }
//   req, err := http.NewRequest(method, url, payload)

//   if err != nil {
//     fmt.Println(err)
//     return
//   }
//   req.Header.Add("Content-Type", "application/json")
//   req.Header.Add("Authorization", "Basic cHJhZ21hdGljOnJldmlld3M=")

//   res, err := client.Do(req)
//   if err != nil {
//     fmt.Println(err)
//     return
//   }
//   defer res.Body.Close()

//   body, err := io.ReadAll(res.Body)
//   if err != nil {
//     fmt.Println(err)
//     return
//   }
//   fmt.Println(string(body))
// }