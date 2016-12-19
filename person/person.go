package person

import "github.com/mailru/easyjson"

//go:generate easyjson -snake_case

//easyjson:json
type Person struct {
	Name string
	Age uint32
}

func Put() []byte {
	p := Person{
		Name: "User Name",
		Age: 30,
	}
	b, _ := easyjson.Marshal(p)
	return b
}
