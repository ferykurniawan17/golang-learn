package main

import (
	"fmt"
	"time"
)

var loop uint8 = 0

func sendBack(signal chan uint8) {
	signal <- loop
}

// Fungsi untuk mencetak pesan beberapa kali
func printMessageConcurrency(message string, times int, signal chan uint8) {
    for i := 0; i < times; i++ {
			loop += 1
			fmt.Println(loop, message)
			time.Sleep(time.Millisecond * 500) // Menunggu 500ms

			if loop == 12 {
				loop = 0
				go sendBack(signal)
			}
    }
}

func printMessage(message string, times int) {
	for i := 0; i < times; i++ {
		loop += 1
		fmt.Println(loop, message)
		time.Sleep(time.Millisecond * 500) // Menunggu 500ms
	}
}

func main() {
	withConcurrency()
	withoutConcurrency()
}

var times []int = []int{5, 4, 3}

func withoutConcurrency() {
	timeStart := time.Now();
	printMessage("Loop biasa 1", times[0]);
	printMessage("Loop biasa 2", times[1]);
	printMessage("Loop biasa 3", times[2]);
	timeEnd := time.Now();
	duration := timeEnd.Sub(timeStart)
	fmt.Printf("withoutConcurrency Dalam detik: %v detik\n", duration.Seconds())
}

func withConcurrency() {
	timeStart := time.Now();
	signal := make(chan uint8)

	go printMessageConcurrency("Proses Goroutine 1", times[0], signal)
	go printMessageConcurrency("Proses Goroutine 2", times[1], signal)
	go printMessageConcurrency("Proses Goroutine 3", times[2], signal)

	<-signal

	timeEnd := time.Now();
	duration := timeEnd.Sub(timeStart)
	fmt.Printf("withConcurrency Dalam detik: %v detik\n", duration.Seconds())
}