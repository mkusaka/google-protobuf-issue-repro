package main

import (
	"fmt"
	"log"

	tutorial "github.com/mkusaka/google-protobuf-issue-repro/go/generated"
	"google.golang.org/protobuf/encoding/protojson"
)

func main() {
	// PhoneNumber フィールドに異なる値を持つ Person メッセージを作成
	person := &tutorial.Person{
		PhoneNumbers: []*tutorial.PhoneNumber{
			{Type: tutorial.PhoneType_HOME}, // Type のみ設定
			{Number: "987-654-3210"},        // Number のみ設定
		},
	}

	// JSON 形式に marshal した結果を確認
	option := protojson.MarshalOptions{
		EmitUnpopulated: true,
	}

	jsonData, err := option.Marshal(person)
	if err != nil {
		log.Fatalf("JSON marshaling failed: %s", err)
	}

	fmt.Println("person JSON marshal の結果:")
	fmt.Println(string(jsonData))

	//// 各フィールドを確認
	//fmt.Println("person#phone_numbers の type:")
	//if len(person.PhoneNumbers) > 1 {
	//	fmt.Println(person.PhoneNumbers[1].GetType()) // Type のデフォルト値が何か確認
	//}
	//
	//// 空の phone_numbers を持つ Person メッセージ
	//numberEmptyPerson := &tutorial.Person{
	//	PhoneNumbers: []*tutorial.PhoneNumber{}, // 空の phone_numbers
	//}
	//
	//// JSON 形式に marshal した結果を確認
	//jsonDataEmpty, err := json.Marshal(numberEmptyPerson)
	//if err != nil {
	//	log.Fatalf("JSON marshaling failed: %s", err)
	//}
	//
	//fmt.Println("number_empty_person JSON marshal の結果:")
	//fmt.Println(string(jsonDataEmpty))
	//
	//// 各フィールドを確認
	//fmt.Println("number_empty_person#phone_numbers:")
	//fmt.Println(numberEmptyPerson.PhoneNumbers)
	//
	//// デフォルトの Person メッセージ（PhoneNumbers フィールド未設定）
	//numberDefaultPerson := &tutorial.Person{}
	//
	//// JSON 形式に marshal した結果を確認
	//jsonDataDefault, err := json.Marshal(numberDefaultPerson)
	//if err != nil {
	//	log.Fatalf("JSON marshaling failed: %s", err)
	//}
	//
	//fmt.Println("number_default_person JSON marshal の結果:")
	//fmt.Println(string(jsonDataDefault))
	//
	//// 各フィールドを確認
	//fmt.Println("number_default_person#phone_numbers:")
	//fmt.Println(numberDefaultPerson.PhoneNumbers) // nil または未設定
}
