import UIKit

// 1. 첫 번째 방법
// 펫 관련 프로토콜
protocol Pet{
    func doCry()
}
// extension을 통해 메소드를 옵셔널로 설정 할 수 있다.
extension Pet{
    func doCry(){} // 구현이 되어있는 상태
}
class Cat : Pet{
    
}

// 2. 두 번째 방법

@objc protocol Animal{
    @objc optional func doingCry() // objc에는 optional 키워드가 있어서 사용하면 된다.
}

class Dog : Animal{
    
}
