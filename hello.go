package main

import (
	"fmt"
	"math"
	"runtime"
	"sort"
	"strconv"
	"strings"
	"time"
)

func main() {
	// number()
	// arraySample()
	// standardLib()
	// loopSample()
	// condition()
	// tryFunc()
	// timeLib()
	// objectTest()
	// runtimeMechine()
	// multipleArr()
	test()
}

func test() {
	var numberOne uint8 = 1;
	fmt.Printf("Number is %v\n", numberOne)

	var ages []uint8 = []uint8{1, 2, 3}

	fmt.Printf("ages %v\n", ages)
	
	for i := 0; i < len(ages); i++ {
		fmt.Println("Umur anak ke", i + 1, "adalah", ages[i], "tahun")
	}

	var siswaKelas [][]string = [][]string{
		{ "Fery 1", "Fery 2" },
		{ "Kurniawan 1", "Kurniawan 2" },
	}

	for index, value := range siswaKelas {
		for i, val := range value {
			fmt.Printf("Nama siswa kelas %v dengan nomor urut %v adalah %v\n", index + 1, i + 1, val)
		}
	}

	fmt.Println(siswaKelas[1][1])
	fmt.Println(siswaKelas[0][1])

	var t = time.Now()
	fmt.Println("Waktu Sekarang adalah jam", t)

	modifyDate := time.Date(t.Year(), t.Month(), t.Day(), 7, 30, 0, 0, t.Location())

	fmt.Printf("Waktu Masuk sekolah adalah jam %v:%v\n", modifyDate.Hour(), modifyDate.Minute())
}

func multipleArr() {
	board := [][]string {
		{"-", "-", "-"},
		{"-", "-", "-"},
		{"-", "-", "-"},
	}

	board[0][0] = "X"
	board[1][1] = "X"
	board[2][2] = "X"
	board[0][1] = "O"
	board[0][2] = "O"

	// fmt.Println(board)

	for i := 0; i < len(board); i++ {
		fmt.Printf("%s\n", strings.Join(board[i], " "))
	}
}

func runtimeMechine() {
	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Println("OS X.")
	case "linux":
		fmt.Println("Linux.")
	default:
		fmt.Printf("%s.\n", os)
	}
}

type SchoolClass struct {
	name string
	level int8
	capacity int8
}

type Student struct {
	name string
	class SchoolClass
	rank int8
}

func objectTest() {
	classOne := SchoolClass{ name: "1A", level: 1, capacity: 20 }
	var studentOne Student = Student{ name: "Zera", class: classOne, rank: 1 }

	fmt.Printf("Nama: %v\n", studentOne.name)
	fmt.Printf("Rank: %v\n", studentOne.rank)
	fmt.Printf("Kelas: %v\n", studentOne.class.name)
	fmt.Printf("Kelas Level: %v\n", studentOne.class.level)
	fmt.Printf("Kelas Kapasitas: %v\n", studentOne.class.capacity)

	var classTwo SchoolClass = classOne;
	classTwo.name = "1B"
	classTwo.capacity = 22

	var studentTwo = new(Student)
	studentTwo.name = "Gogong"
	studentTwo.class = classTwo
	studentTwo.rank = 10

	fmt.Printf("Nama: %v\n", studentTwo.name)
	fmt.Printf("Rank: %v\n", studentTwo.rank)
	fmt.Printf("Kelas: %v\n", studentTwo.class.name)
	fmt.Printf("Kelas Level: %v\n", studentTwo.class.level)
	fmt.Printf("Kelas Kapasitas: %v\n", studentTwo.class.capacity)
}

func timeLib() {
	timeNow := time.Now()
	fmt.Println("Waktu sekarang adalah", timeNow)
	fmt.Println("Tahun", timeNow.Year())
	fmt.Println("Bulan", timeNow.Month())
	fmt.Println("Tanggal", timeNow.Day())
	fmt.Println("Jam", timeNow.Hour())
	fmt.Println("Menit", timeNow.Minute())
	fmt.Println("Detik", timeNow.Second())
}

func arraySample() {
	// Array
	var ages [3]int = [3]int{1, 2, 3}
	var agesOne = [3]int{1, 2, 3}

	fmt.Println(ages, len(agesOne));

	var names = []string{"fery", "mira"}

	fmt.Println(names, len(names))
	names = append(names, "Zera")
	fmt.Println(names, len(names))

	rangeOne := names[0:1] // Fery
	rangeTwo := names[1:] // "Mira, Zera"
	rangeThree := names[0:] // Fery, Mira, Zera
	rangeFour := names[:2] // Fery, Mira
	fmt.Println(rangeOne, rangeTwo, rangeThree, rangeFour)
}

func standardLib() {
	// Strings Lib

	greeting := "Hello, Selamat pagi!!"

	fmt.Println(strings.Contains(greeting, "Hello"))
	fmt.Println(strings.ReplaceAll(greeting, "Hello", "Hi"))
	fmt.Println(strings.ToUpper(greeting))
	fmt.Println(strings.ToLower(greeting))
	fmt.Println(strings.Index(greeting, "ll"))

	splitedStr := strings.Split(greeting, " ")
	fmt.Println(splitedStr, len(splitedStr)) 

	// Sort Lib
	steps := []int{1, 3, 4, 2, 5, 9, 7, 8, 10}
	sort.Ints(steps)
	fmt.Println(steps) // [1 2 3 4 5 7 8 9 10]

	index := sort.SearchInts(steps, 4)
	fmt.Println(index) // 4
}

func number() {
	// String
	var nameOne string = "Fery One";
	name := "Fery"
	fmt.Println("String:", nameOne, name)

	// Int Number
	var fullname string = "Fery Kurniawan"
	var age int = 10;
	fmt.Println("Int", fullname, strconv.Itoa(age))

	var numberOne int8 = 127
	var numberTwo int = 32767
	var nunberThree uint8 = 255
	fmt.Println(numberOne, numberTwo, nunberThree)

	// Float Number
	var floatOne float32 = 1.4444444444
	var floatTwo float64 = 3498247892347283947923473.23
	fmt.Println(floatOne, floatTwo)
}

func loopSample() {
	fmt.Println("========= LOOP =========")

	for x := 0; x < 10; x++ {
		fmt.Println(x)
	}

	var names = []string{"fery", "mira", "Zera"}

	for x := 0; x < len(names); x++ {
		fmt.Println("Name:", names[x])
	}

	for index, value := range names {
		fmt.Printf("The name for index %v is %v \n", index, value)
	}
}

func condition() {
	var age int = 33;

	if age < 35 {
		fmt.Println("Anda masih muda")
	} else {
		fmt.Println("Anda sudah tua")
	}

	var names = []string{"fery", "mira", "Zera"}

	for index, value := range names {
		if index == 0 {
			fmt.Printf("This name in index %v is %v \n", index, value)
			continue
		}

		if strings.Contains(value, "ra") {
			fmt.Printf("This name is contains ra %v is %v \n", index, value)
			break
		}

		fmt.Printf("This name in index more then 0 is %v \n", value)
	}
}

func double(num int8) int8 {
	return num * 2;
}

func sayGreeting(name string) {
	fmt.Println("Selamat pagi", name)
}

func cycleFunc (arr []string, callback func(string)) {
	for _, value := range arr {
		callback(value)
	}
}

func circleArea(r float64) float64 {
	return math.Pi * r * r
}

func getNames(name string) (string, string) {
	nameArr := strings.Split(name, " ")

	if (len(nameArr) < 2) {
		return strings.ToUpper(nameArr[0]), "-" 
	} 

	return strings.ToUpper(nameArr[0]), nameArr[1]
}

func tryFunc() {
	total := double(4)
	fmt.Printf("Total double is %v \n", total)

	var names = []string{"fery", "mira", "Zera"}
	cycleFunc(names, sayGreeting)

	circleOne := circleArea(12)
	circleTwo := circleArea(112)

	fmt.Println(circleOne, circleTwo)

	firstName, lastName := getNames("Fery Kurniawan")
	fmt.Printf("My first name is %v and my last name is %v \n", firstName, lastName)
}
