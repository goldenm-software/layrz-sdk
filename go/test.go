package main

import (
	"fmt"

	"github.com/goldenm-software/layrz-sdk/types"
)

func main() {
	fmt.Println("Test")
	strTime := "12:25:00"
	fmt.Println("Raw time string:", strTime)
	var t types.Time
	err := t.UnmarshalJSON([]byte(strTime))
	if err != nil {
		fmt.Println("Error unmarshalling time:", err)
		return
	}
	fmt.Println("Unmarshalled time:", t)

	var marshalledTime []byte
	marshalledTime, err = t.MarshalJSON()
	if err != nil {
		fmt.Println("Error marshalling time:", err)
		return
	}

	fmt.Println("Marshalled time JSON:", string(marshalledTime))
}
