package main

import (
	"fmt"
	"sort"
)

type UserInfo struct {
	Name string
	Age int
}

type SortList []UserInfo

func (a SortList) Len() int           { return len(a) }
func (a SortList) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortList) Less(i, j int) bool { return a[i].Age < a[j].Age }

func main() {
	users := []UserInfo{
		{"Alice", 25},
		{"Bob", 30},
		{"Cindy", 20},
		{"Fery", 11},
	}

	sort.Sort(SortList(users))

	fmt.Println(users)
}