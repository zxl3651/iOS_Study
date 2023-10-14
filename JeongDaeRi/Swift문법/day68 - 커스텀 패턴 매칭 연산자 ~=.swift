import UIKit

var statusCode = 403

//// 조건, if, guard, switch 다 사용 가능하다.
//// if
//if 400..<500 ~= statusCode{
//    print("패턴 매칭으로 발견")
//}
//
//// guard
//func doSomeCheck(status: Int){
//    guard 400..<500 ~= status else{
//        return
//    }
//    print("들어옴 - guard")
//}
//
//doSomeCheck(status: statusCode)
//
//// switch
//switch statusCode{
//case 400..<500:
//    print("들어옴 - switch")
//default:
//    break
//}
//
//// if case
//if case (400..<500) = statusCode {
//    print("들어옴 - if case")
//} else{
//    print("X")
//}

// 커스텀 패턴 연산자를 만들기

//func ~= (pattern: String, value: Int) -> Bool{
//    return pattern == "\(value)"
//}
//
//let someValue = 30
//
//// if
//if "30" ~= someValue{
//    print("30 입니다. - if")
//} else{
//    print("30이 아닙니다 - if")
//}
//
//// switch
//switch someValue{
//case "30": // 패턴 매칭이 됬다는 뜻 => "30" (pattern에 해당), someValue (value에 해당)
//    print("30 입니다. - switch")
//default:
//    print("30이 아닙니다 - switch")
//}
//
//// if case
//if case "30" = someValue{
//    print("30 입니다. - if case")
//} else{
//    print("30이 아닙니다 - if case")
//}
//
//func checkCustom(){
//    guard "30" ~= someValue else{
//        print("30이 아닙니다 - guard")
//        return
//    }
//    print("30 입니다. - guard")
//}
//checkCustom()

// 응용 (이메일 정규식 확인 - 이메일인지 아닌지 확인하기)
// 기존 코드
//func isValidEmail(_ email: String) -> Bool{
//    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-0.-]+\\.[A-Za-z]{2,64}"
//    let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
//
//    return emailPred.evaluate(with: email)
//}

// 응용 코드
func ~= (pattern: NSPredicate, value: String) -> Bool{
    return pattern.evaluate(with: value)
}

let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-0.-]+\\.[A-Za-z]{2,64}"
let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)

// if
if emailPred ~= "zxl3651@naver.com"{
    print("이메일 형식이 맞습니다 - if")
} else{
    print("이메일 형식이 아닙니다 - if")
}

// switch
switch "zxl3651@naver.com"{
case emailPred:
    print("이메일 형식이 맞습니다 - switch")
default:
    print("이메일 형식이 아닙니다 - switch")
}

// if case
if case emailPred = "zxl3651@naver.com" {
    print("이메일 형식이 맞습니다 - if case")
} else{
    print("이메일 형식이 아닙니다 - if case")
}
