import UIKit

struct MyPet {
    
    var title :String = "타이틀없음"
    // 내부에서만 값을 변경할 수 있도록 하겠다는 뜻
    private (set) var name :String = "이름없음"
    
    mutating func setName(to newName: String){
        self.name = newName
    }
}

var myPet = MyPet()
//myPet.name
//myPet.title
//myPet.title = "호롤롤로"
//myPet.title
//myPet.name = "쩡대리"
myPet.setName(to: "쩡대리")
myPet.name
