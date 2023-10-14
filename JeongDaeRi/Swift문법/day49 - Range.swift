import UIKit

let myRange = 0...2 // 0, 1, 2
let mySecondRange = 0..<2 // 0, 1

let myFriends = ["철수", "영희", "제임스", "수잔"]

for index in mySecondRange{
    print("index: \(index)")
}
// range 사용법 1.
myFriends[mySecondRange]

// 2.
if mySecondRange.contains(2){
    print("포함 O")
} else{
    print("포함 X")
}

// 3.
var first = 0
var second = 3
let myCustomnumberRange = first...second

for index in myCustomnumberRange{
    print("index: \(index)")
}
