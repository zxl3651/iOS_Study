import UIKit

// equatable 프로토콜을 통해서 커스텀 비교 연산자를 만들 수 있다.
struct Pet : Equatable{
    var id : String
    var name : String
    
    static func == (lhs: Pet, rhs: Pet) -> Bool{
        return lhs.id == rhs.id
    }
}

let mypet1 = Pet(id: "01", name: "고양이")
let mypet2 = Pet(id: "02", name: "댕댕이")
let mypet3 = Pet(id: "01", name: "개냥이")

if mypet1.id == mypet3.id{
    print("두 펫은 같다.")
}
// equatable 프로토콜로 인해서 비교가 가능해진다.
if mypet1 == mypet3{
    print("두 펫은 같다.")
}
