import UIKit

// Any 를 통해 어떠한 자료형도 받을 수 있다.
var someValue : Any = "호롤롤롤"

print(type(of: someValue))

someValue = 123
// Int로 변경
print(type(of: someValue))

struct Animal{
    
}

someValue = Animal()
// Animal struct로 변경
print(type(of: someValue))

class Pet{
    
}

someValue = Pet()
// Pet class로 변경
print(type(of: someValue))

// 튜플도 가능
someValue = ("안녕", "하세요")

print(type(of: someValue))

// 대표적인 Any 사용이 print() 함수다.
print(123, "하하하", Animal())
