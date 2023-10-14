import UIKit

// 배열과 비슷한 set
// 배열처럼 중복으로 값을 넣을 수 없다.
// 아무리 넣어도 고유한 녀석들만 남는다.
var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count
myNumberSet

// 배열과 다르게 순서가 정해져있지 않다.
// 매번 출력되는 값들의 순서가 다르다
for aNumber in myNumberSet {
    print("aNumber: ", aNumber)
}

var myBestFriends : [String] = ["철수", "영희", "수지"]
myBestFriends.contains("수지") // contains => 가지고 있다면 true, 없다면 false

var myFriends : Set<String> = ["철수", "영희", "수지"]

// 그 외에도 콜렉션 [배열, 셋, 딕셔너리, 튜플] 등이 가지고 있는 기본 메소드 들을 제공한다.
myFriends.contains("쩡대리")

// 수지의 Set 인덱스를 가져온다.
if let indexToRemove = myFriends.firstIndex(of: "수지") { // firstIndex 값을 찾는데 없을 수도 있기 때문에 옵셔널로 반환. if let으로 옵셔널을 벗기는 과정
    // 수지를 지운다.
    print("indexToRemove: ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("수지") {
    print("내 친구중에 수지가 없다...")
}
