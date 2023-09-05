import UIKit

// 다크모드 여부
var isDarkMode : Bool = true
// isDarkMode == true
/*
if isDarkMode == true{
    print("다크모드입니다.")
} else{
    print("다크모드가 아닙니다.")
}
*/

//var title : String = isDarkMode == true ? "다크모드입니다." : "다크모드가 아닙니다." // true이면 전자, false면 후자
//var title : String = isDarkMode ? "다크모드 입니다." : "다크모드가 아닙니다." // 위와 아래는 동일한 코드
var title : String = !isDarkMode ? "다크모드가 아닙니다." : "다크모드 입니다." // !로 부정하기

print("title: \(title)")
