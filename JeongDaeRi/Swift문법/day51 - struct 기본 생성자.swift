import UIKit

struct Pet{
    var name: String
     
}

extension Pet{
    init(){
        name = "호호호"
    }
}

let pet = Pet() // 기본생성자 사용
let pet2 = Pet(name: "하태준") // 확장해서 만든 생성자 사용
