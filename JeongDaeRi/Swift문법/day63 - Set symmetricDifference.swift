import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// symmetricDifference = 중복이 되는 얘들은 아예 제거해버리고 중복 안되는 얘들만 데리고 옴
let exceptDuplicateFriends = myFriendsSet.symmetricDifference(yourFriendsSet)
