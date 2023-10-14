import UIKit

class Cat{}
class Dog{}

let myCat = Cat()
let myDog = Dog()

// 1. if를 사용해 자료형 체크
if myCat is Cat{
    print("고양이 입니다1")
}

// 2. guard를 사용해 자료형 체크 (guard는 if의 반대)
//guard는 return해야하므로 함수로 만들어야함
func check_cat(){
    guard myCat is Cat else{ // myCat이 Dog가 아니면
        print("고양이가 아닙니다")
        return
    }
    print("고양이입니다2")
}

check_cat()

// 3. switch를 사용해 자료형 체크

switch myCat{
case is Dog:
    print("강아지 입니다1")
case let mykitty as Cat:
    print("고양이입니다3")
}

// 4. if case is 로 체크, 자료형이 먼저 나오고 비교할 객체를 넣으면 된다.
if case is Cat = myCat{
    print("고양이입니다4")
}else{
    print("강아지 입니다2")
}

// 5. if case is도 guard 처럼 사용가능하다.
func check_dog(_ petname: Dog){
    guard case is Dog = petname else{
        print("고양이 입니다4")
        return
    }
    print("강아지 입니다3")
}

check_dog(myDog)
