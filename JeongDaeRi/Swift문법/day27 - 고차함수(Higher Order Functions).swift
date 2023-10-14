import UIKit

func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

var getNameClosure : (String) -> String

// 메소드이지만 클로저를 매개변수로 받고, 클로저를 반환한다.
func sayHello( getName: (String) -> String, name: String) -> String {
    return getName(name)
}

let resultOne = sayHello(getName: getName(_:), name: "호롤롤로")

// 데이터 타입을 바꿔주는 map 도 고차함수다!
let numbers = [3, 7, 4, -2, 9, -6, 10, 1]
// Int 배열을 String 배열로 변환하기
let stringNumbers : [String] = numbers.map { (aNumber: Int) -> String in
    return "\(aNumber) 입니다."
}
// 짝수만 가져오기
let evenNumbers : [Int] = numbers.filter { aNumber in
    return aNumber % 2 == 0
}
// 홀수만 가져오기
let oddNumbers : [Int] = numbers.filter { aNumber in
    return aNumber % 2 != 0
}
