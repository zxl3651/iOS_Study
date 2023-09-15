// 객체 생성시 싱글턴 패턴으로 한 메모리 공간에 값을 올릴 수 있습니다.
class Pet{
    static let shared = Pet() // 보통 변수 이름을 shared로 지정, 자기자신을 가진다.
    private init(){}
    
    var name: String = "고양이"
}

Pet.shared.name = "개냥이"

// 아래 myCat, myDog는 같은 메모리 공간을 가지고 있으며, shared가 변경되면 똑같이 변경됩니다.
let myCat = Pet.shared
let myDog = Pet.shared
