import UIKit

// set에서는 subset이 있다.
let totalFriends = ["철수", "영희", "수잔", "제임스"]
let foreignFriends = ["수잔", "제임스"]
let koreanFriends = ["철수", "영희", "상철"]

// Set을 통해 배열이 다른 배열을 포함하고 있는지 여부를 체크 할 수 있습니다.
// array(배열)로는 확인이 안됌, 고유한 값을 가지고 있는 Set으로 확인 가능.

let totalFriendsSet = Set(totalFriends)
let foreignFriendsSet = Set(foreignFriends)
let koreanFriendsSet = Set(koreanFriends)

// foreignFriends가 totalfriends에 속해있는지 isSubset으로 표현
let isForeignFriendsIsInTotalFriends = foreignFriendsSet.isSubset(of: totalFriendsSet)

// totalfriends 안에 foreignFriends가 포함되어있는지 isSuperset으로 표현
let isTotalFriendsHasForeignFriends = totalFriendsSet.isSuperset(of: foreignFriendsSet)

// "상철"은 totalfriends에 속해있지 않기떄문에 false
let isTotalFriendsHasKoreanFriends = totalFriendsSet.isSuperset(of: koreanFriendsSet)
