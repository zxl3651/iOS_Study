import UIKit

// struct 안에 enum타입을 넣는 경우(중첩)
struct MyPet{
    enum Kind{
        case cat
        case dog
        
        var value : String{
            switch self{
            case .cat:
                return "고양이"
            case .dog:
                return "강아지"
            }
        }
        var name : String{
            switch self{
            case .cat:
                return "개냥이"
            case .dog:
                return "해피"
            }
        }
    }
    let kind : Kind
    var description : String{
        return "우리집 \(kind.value) \(kind.name)"
    }
}

let myCat = MyPet(kind: .cat)
print(myCat.description)

let myDog = MyPet(kind: .dog)
print(myDog.description)


