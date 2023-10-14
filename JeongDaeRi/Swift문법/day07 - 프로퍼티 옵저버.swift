import UIKit


var myAge = 0{
    willSet{
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet{
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

// 값이 변경이 된다는 걸 알수있다.
myAge = 10
myAge = 20
