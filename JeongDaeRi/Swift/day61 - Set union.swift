import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// union : 중복없는 전체친구들
let totalfriends = myFriendsSet.union(yourFriendsSet)

