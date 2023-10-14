import UIKit

var greeting = "Hello, playground"

// 트레일링 클로져 == 화물차에서 짐이 뒤에 있듯이 클로저를 매개변수에서 뒤로 놓는다는 걸 의미한다.
func someFunctionWithTrailingClosure(name: String = "", completion: () -> Void){
    print(#fileID, #function, #line, "- ")
    completion()
}

someFunctionWithTrailingClosure(completion: {
    print(#fileID, #function, #line, "- hohoho 1")
})

// completion(클로저) 생략
someFunctionWithTrailingClosure {
    print(#fileID, #function, #line, "- hohoho 2")
}


func someFunctionWithClosures(first: () -> Void,
                              second: (String) -> Void,
                              third: (Int) -> Void){
    print(#fileID, #function, #line, "- ")
    first()
    second("호롤롤로")
    third(3)
}

someFunctionWithClosures(first: {
    print("첫번째")
}, second: {
    print("두번째: \($0)")
}, third: {
    print("세번째: \($0)")
})
// 클로저 생략
someFunctionWithClosures{
    print("first")
} second: { string in
    print("string: \(string)")
} third: { number in
    print("number: \(number)")
}
