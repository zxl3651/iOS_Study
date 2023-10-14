import UIKit

enum FriendType{
    case normal, best
}

struct Friend{
    var name:String
    var type:FriendType
}

var friendList = [
    Friend(name: "철수", type: .normal),
    Friend(name: "영희", type: .best),
    Friend(name: "제임스", type: .best),
    Friend(name: "수잔", type: .normal),
]

//let groupFriends = Dictionary(grouping: friendList, by: {$0.type})
// 위와 아래는 동일한 뜻
let groupFriends = Dictionary(grouping: friendList, by: {
    (friend) -> FriendType in
    return friend.type
})

groupFriends
for (index, value) in groupFriends.enumerated(){
    print("index: \(index), value: \(value)")
    print()
}
groupFriends[.normal]
groupFriends[.best]
