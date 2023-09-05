import UIKit

// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    // 위처럼 하나하나 초, 중, 고를 나누거나 아래처럼 ,를 통해 한번에 나눌 수 있음
    case elementary, middle, high
}

let yourSchool = School.high //let은 상수(값이 변경되지 않음), var은 변수(값이 변경됌)
//print("yourSchool: \(yourSchool)")
print("yourSchool: ", yourSchool) // print("yourSchool: \(yourSchool)") 과 똑같음

enum Grade : Int { //enum Grade는 Int라는 값을 가지고 있다.
    case first = 1
    case second = 2
}

let yourGrade = Grade.second.rawValue //rawValue를 통해 enum Grade에 Int값을 가져올 수 있다. rawValue를 하지않는다면 second를 가져온다.
print("yourGrade : \(yourGrade)")


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)

    func getName() -> String { //getName이라는 함수를 호출하면 String 값을 반환한다는 뜻
        switch self {
            // 두 가지 방식(let name), let ~~~ (name)
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "정대리중학교")

print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")


