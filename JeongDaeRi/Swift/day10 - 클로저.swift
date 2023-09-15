import UIKit

// 클로저는 메소드를 실행하는 것과 같다.
// String을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "정대리"
}()

print(myName)

// 클로저 정의 (매개변수값은 String으로 받고, String으로 return한다.)
let myRealName : (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("쩡대리")

// 매개변수값은 String으로 받고, void로 return한다.
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("정대리 호롤롤로")
