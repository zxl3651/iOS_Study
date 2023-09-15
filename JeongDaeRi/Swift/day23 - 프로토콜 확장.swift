import UIKit

import UIKit

// 이름관련 프로토콜
// 프로토콜에는 선언만 하고 로직을 담을 수 없다.
protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
}

// 프로토콜을 확장 익스텐션하면 메소드의 로직을 담을 수 있다.
extension Naming {
    func getFullname() -> String{
        return self.lastname + " " + self.firstname
    }
    // 만약 extension에서 함수 이름이 동일하다면 아래 구조체에서 로직을 구성하지 않아도 사용할 수 있다.
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "쩡", firstname: "대리")

myFriend.getName()
myFriend.getFullname()

