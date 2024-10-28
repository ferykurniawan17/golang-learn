package main

func main() {
		var names []string
		names = []string{"John", "Wick"}
		println(names[0]) // Output: John

		var moreNames []string
		moreNames = names
		moreNames[0] = "Bruce"
		println(names[0]) // Output: Bruce
		println(moreNames[0]) // Output: Bruce
}