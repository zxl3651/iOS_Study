import UIKit


// 함수, 메소드 정의
func myFunction(name: String) -> String{ //name을 매개변수로 받고, String으로 반환하는 함수라는 뜻
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunction(name: "쩡대리")


// 함수, 메소드 정의(같은 함수지만 매개변수 이름을 변경함)
func myFunctionSecond(with name: String) -> String{ //with라고 name 앞에 작성하면 매개변수 이름을 변경할 수 있다.
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(with: "호롤롤로")


// 함수, 메소드 정의(같은 함수지만 매개변수 이름을 없앰)
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("하하하하")
