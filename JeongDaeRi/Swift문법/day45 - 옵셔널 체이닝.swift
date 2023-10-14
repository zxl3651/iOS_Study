import UIKit

struct Friend{
    let nickname: String
    let person: Person?
}

struct Person{
    let name: String
    let pet: Pet?
}

struct Pet{
    let name: String?
    let kind: String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "정대리", pet: pet)
let friend = Friend(nickname: "빡코더", person: nil)
// if let 사용
if let petname = friend.person?.pet?.name{ // 중간에 하나라도 없으면 else문으로 간다.
    print("petName : \(petname)")
} else{
    print("petName이 없습니다.")
}
// guard let 사용
func getPetName(){
    guard let petName = friend.person?.pet?.name else {
        print("petName이 없습니다.") // 없으면 여기로 들어온다.
        return
    }
    print("petName : \(petName)")
}
// 이렇게 옵셔널이 많을때 옵셔널 바인딩을 아래와 하면 복잡하다.
// 1.
//if let person : Person = friend.person{
//    if let pet = person.pet{
//        if let petname = pet.name{
//            print("petName : \(petname)")
//        } else{
//            print("petName이 없습니다.")
//        }
//    }
//}
// 2.
//if let person = friend.person, let pet = person.pet, let petname = pet.name{
//    print("petName : \(petname)")
//} else{
//    print("petName이 없습니다.")
//}
