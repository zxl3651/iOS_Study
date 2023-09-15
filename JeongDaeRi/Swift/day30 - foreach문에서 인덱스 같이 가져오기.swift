import UIKit

let myFriendsArray : [String] = ["철수","영희","수잔", "제임스", "마크"]

var friendsWithIndex : [String] = []

myFriendsArray.forEach{ aFriends in
    print(aFriends)
}

for (index, aFriends) in myFriendsArray.enumerated(){
    print("index: \(index), item: \(aFriends)")
    friendsWithIndex.append("\(index)번 \(aFriends)")
}
