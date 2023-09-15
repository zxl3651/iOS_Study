import UIKit

var count : Int = 0

let max = 5

// 차이점
// repeat은 일단 실행 -> 조건 체크, while은 조건 체크 -> 실행
repeat{
    count += 1
    print("count : \(count)")
} while count < max
print("완료")
