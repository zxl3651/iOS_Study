import UIKit

// 튜플은 스위프트 콜렉션 중 하나
// 콜렉션 : 배열, 딕셔너리, 셋, 튜플
// 튜플은 키와 값으로 이루어진 묶음
// (키: 값, 키: 값 ...)
var myPet : (name: String, kind: String, age: Int) = (name: "댕댕이", kind: "강아지", age: 1)
// 키로 접근 가능
print(myPet.name)
print(myPet.kind)
print(myPet.age)
// 요소의 순서로 접근 가능
print(myPet.0)
print(myPet.1)
print(myPet.2)

// 값에 접근에서 변경이 가능, 자료형에 맞춰야 됌(다른 자료형은 안된다)
myPet.name = "개"
print(myPet.name)

 // 키가 없이 생성할 수 있음
var myCat : (String, String, age: Int) = ("고양", "고양이", age: 1)
print(myCat.0)
print(myCat.1)
print(myCat.2)
