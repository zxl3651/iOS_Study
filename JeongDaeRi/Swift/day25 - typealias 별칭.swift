import UIKit

// typealias 별칭으로 내가 원하는 것을 다르게 부를수 있다.


protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

// 프로토콜 별칭 설정
typealias Friendable = Naming & Aging

typealias FullNaming = Naming

//struct Friend : Friendable {
//
//}

struct Friend : Friendable {
    
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

//자료형에 별칭을 설정한 예
typealias FriendName = String
// FriendName은 String과 똑같은 효과를 가지게 된다.
var friendName : String = "정대리"

// 자료형, 클래스, 스트럭트, 클로저 등
// 모두 별칭 설정이 가능하다
typealias Friends = [Friend]
// 아래는 var myFriendsArray: [Friend] = [] 와 같다
var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void

// 클로저를 StringBlock 이라는 별칭으로 설정하였다.
func sayHi(completion : StringBlock){
    print("안녕하세요?")
    completion("오늘도 빡코딩 하고 계신가요?")
}

sayHi(completion: { saying in
    print("여기서 받음 : ", saying)
})
// 너무 길게 접근해야 하는 걸 짧게 가져가고 싶을때(with enum)
typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MyType.DOG
}

var myClass = MyClass()

//기존에는 = MyClass.MY_TYPE.DOG로 작성해야함
myClass.myType = MyType.DOG

print("myClass.myType:", myClass.myType)
