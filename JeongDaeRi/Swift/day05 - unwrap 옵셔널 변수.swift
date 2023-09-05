import UIKit


// 옵셔널이란?
// 값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)

// 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것
// 1. if let 을 사용하기
if let otherVariable = someVariable { // 만약 someVariable에 값이 있다면 otherVariable이라는 곳에 넣어서 쓰겠다는 뜻 => other는 옵셔널이 아님
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else { //값이 없을땐 여기를 탐
    print("값이 없다.")
}

someVariable = nil

// someVariable 이 비어있으면 즉 값이 없으면 기본값으로 요놈을 넣겠다.
let myValue = someVariable ?? 10 // ??가 값이 없으면 이라는 뜻
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

// 값을 벗겨내지 않음
print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")
// 값을 벗겨냄
unwrap(firstValue)
unwrap(secondValue)

// 2. guard let 을 사용하기
func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    // 즉 지나간다.
    guard let unWrappedParam = parameter else { // 값이 있으면 unWrappedParam 에 값이 들어가고 없으면 else를 타고 return한다.
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}
