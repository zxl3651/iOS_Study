import UIKit

class Friend{
    // static func 와 class func 는 객체를 생성하지 않고도 접근할 수 있다.
    
    static func sayHi(){
        print("안녕")
    }
    class func sayHo(){
        print("호우")
    }
}

class BestFriend : Friend{
    /// class func는 상속할 수 있다.
    override class func sayHo() {
        print("덮어씀")
    }
    // static func는 상속할 수 없다. == final 키워드와 동일한 의미
    func sayHi(){
        print("덮어씀")
    }
}

Friend.sayHi()
Friend.sayHo()
BestFriend.sayHi()
BestFriend.sayHo()
