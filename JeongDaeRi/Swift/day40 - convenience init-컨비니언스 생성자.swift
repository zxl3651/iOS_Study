import UIKit

// convenience 생성자 == 추가 생성자라는 의미

class Friend{
    var name:String
    var age:Int
    init(name: String){
        self.name = name
        self.age = 10
    }
    
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name: "이성현")
myFriend.age

let myFriend2 = Friend(name: "이성현", age: 25)
myFriend2.age

