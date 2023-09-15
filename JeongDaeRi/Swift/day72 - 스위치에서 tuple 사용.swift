import UIKit

let somePoint = (x: 2, y: 0)

switch somePoint{
case (x:0, y:0):
    print("somePoint는 중심")
case (_, y:0):
    print("somePoint는 x축 위에 있다")
case (x:0, _):
    print("somePoint는 y축 위에 있다")
case(x: -2...2, y: -2...2): // 상자의 크기가 4 x 4
    print("somePoint는 상자 안에 있다.")
default:
    print("somePoint는 상자 밖에 있다.")
}

if case (x:2, y: 0) = somePoint{
    print("상자 안에 들어옴 - if case")
}

// 두가지 guard ( ==, case)
func someGuardCheck1(){
    guard (x:2, y:0) == somePoint else{
        return
    }
    print("상자 안에 들어옴 - guard1")
}
func someGuardCheck2(){
    guard case (x:2, y:0) = somePoint else{
        return
    }
    print("상자 안에 들어옴 - guard2")
}
someGuardCheck1()
someGuardCheck2()
