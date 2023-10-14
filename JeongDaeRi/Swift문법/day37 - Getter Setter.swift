import UIKit

// getter = 가져올 때, setter = 설정할 때 라고 생각하면 됌
class Friend {
    
    var name: String
    var age: Int
    
    var detailInfo : String = ""
    
    var info : String {
        // 해당 멤버 변수 데이터를 가져올 때 get을 사용한다.
        get{
            return "내 친구: \(name) / 나이: \(age)"
        }
        // 해당 멤버 변수에 값을 설정할 때 set을 사용한다.
        set {
            detailInfo = "info 에서 설정됨 :" + newValue //호출할 때 들어온 데이터를 'newValue'라고 함
        }
    }
    
    init(_ name: String, _ age: Int){
        self.name = name
        self.age = age
    }
    
}

let myFriend = Friend("쩡대리", 20)

myFriend.info = "호롤롤로"
myFriend.detailInfo
    
