package main

import "fmt"

type Person struct {
    name string
    age  int
}

func main() {
    var p Person = Person{name: "Alice", age: 30}
    var pp *Person = &p

    p.age = 31 // Mengubah nilai age melalui pointer pp
    fmt.Println(p) // Output: 31
    fmt.Println(pp) // Output: 31

    *pp = Person{name: "Bob", age: 20}
    fmt.Println(p) // Output: &{Bob 20}
    fmt.Println(pp) // Output: &{Bob 20}
}