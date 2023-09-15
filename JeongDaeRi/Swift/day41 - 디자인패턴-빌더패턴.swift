import UIKit

struct Pet{
    var name: String? = nil
    var age: Int? = nil
    
    init(){}
    init(builder: SecondPetBuilder){
        self.name = builder.name
        self.age = builder.age
    }
}

class PetBuilder{
    private var pet: Pet = Pet()
    
    func withName(_ name: String) -> Self{
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self{
        pet.age = age
        return self
    }
    func build() -> Pet{
        return self.pet
    }
}

class SecondPetBuilder{
    var name: String? = nil
    var age: Int? = nil
    
    typealias BuilderClosure = (SecondPetBuilder)->() //자기자신을 매개변수로 하는 클로저
    
    init(builderClosure: BuilderClosure) {
        builderClosure(self)
    }
}
// 첫번째 방법(빌더패턴) == 자기자신을 계속 내뱉으면서 마지막에 build를 통해 만들려고 하는 걸 완성한다.
let myPet = PetBuilder()
    .withName("야옹이")
    .withAge(10)
    .build()
myPet

// 두번째 방법(빌더패턴) == 자기자신을 계속 집어넣음
let petBuilder = SecondPetBuilder { builder in
    builder.name = "댕댕이"
}

let mySecondPet = Pet(builder: petBuilder)

/// 빌더 패턴 장점
//객체의 내부 표현을 변경할 수 있습니다. Builder 객체는 Director에게 객체 구성을 위한 추상 인터페이스를 제공합니다. 인터페이스를 통해 Builder는 자신이 어떻게 객체를 만들고 표현하는지에 대한 내부 구조를 숨길 수 있죠. 객체는 추상 인터페이스를 통해 생성되기 때문에 만약 객체의 내부를 변경하고 싶다면 새로운 Builder를 만들기만 하면 됩니다.
//객체를 구성하는 코드를 분리할 수 있습니다. 예를 들어 엄청나게 많은 프로퍼티를 갖는 객체가 존재할 때 Builder는 이를 구성하고 표현하는 방식을 캡슐화하여 모듈성을 향상합니다. 이를 사용하는 곳에서는 객체의 내부 구조를 정의하는 클래스에 대해 알 필요가 없고 Builder 인터페이스에도 나타나지 않습니다.
//객체가 만들어지는 과정을 세밀하게 제어 할 수 있습니다. 한 번에 모든 프로퍼티를 만드는 방법과 다르게 Builder 패턴은 단계별로 객체를 만들기 때문에 이를 세밀하게 제어할 수 있어요.
