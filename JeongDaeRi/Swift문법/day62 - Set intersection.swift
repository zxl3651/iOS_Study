import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// intersection = 중복만 가져오는 것
let commonFriends = myFriendsSet.intersection(yourFriendsSet)
