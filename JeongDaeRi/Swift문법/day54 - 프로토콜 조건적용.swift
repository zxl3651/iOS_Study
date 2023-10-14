import UIKit

protocol Naming{
    var name : String {get set}
}

class Dog : Naming{
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
}

class Cat : Naming{
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
}
// extension 으로 조건을 걸고 같은 함수지만 다른 로직을 구성할 수 있다.
//extension Naming where Self : Cat{
//    func sayHi(){
//        print("\(name)은 야옹")
//    }
//}
//
//extension Naming where Self : Dog{
//    func sayHi(){
//        print("\(name)은 멍멍")
//    }
//}
// 다른 방법
extension Naming{
    func sayHi() where Self : Cat{
        print("\(name)은 야옹")
    }
    
    func sayHi() where Self : Dog{
        print("\(name)은 멍멍")
    }
}


let dog = Dog("개냥이")
let cat = Cat("냥냥이")

dog.sayHi()
cat.sayHi()
