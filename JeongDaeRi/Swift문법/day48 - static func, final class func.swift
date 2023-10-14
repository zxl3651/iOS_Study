import UIKit

class MyClass{
    /// 인스턴스 메소드 = 인스턴스(객체)를 만든 후에 호출할 수 있는 메소드
    func sayHi(){
        print("안녕")
    }
    
    class func sayHiHi(){
        print("안녕하세요")
    }
    
    static func sayHiHiHi(){
        print("static 안녕하세요")
    }
    
    final class func sayHiHiHiHi(){
        print("final class 안녕하세요")
    }
}

class MySubClass : MyClass{
    override func sayHi() {
        super.sayHi()
        print("자식 클래스 호출 - sayHi")
    }
    
    override class func sayHiHi() {
        super.sayHiHi()
        print("자식 클래스 호출 - sayHiHi")
    }
}

//MyClass.sayHi() -> 에러
MyClass.sayHiHi()
MyClass.sayHiHiHiHi()
MySubClass.sayHiHi()

