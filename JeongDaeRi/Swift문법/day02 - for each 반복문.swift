import UIKit

// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열
var myArray : [Int] = [0,1,2,3,4,5,6,7,8,9,10]

// 배열의 갯수 만큼 반복합니다.
for item in myArray {
    print("item: \(item)")
}
//where로 조건걸기
for item in myArray where item > 5 {
    print("5보다 큰수: \(item)")
}
//짝수만 출력
for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
//홀수만 출력
for item in myArray where item % 2 != 0 {
    print("홀수: \(item)")
}
