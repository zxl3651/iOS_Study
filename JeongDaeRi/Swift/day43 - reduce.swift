import UIKit

struct Friend : Hashable{
    var name:String
    var age: Int
}

let myFriends = [
    Friend(name: "철수", age: 10),
    Friend(name: "영희", age: 20),
    Friend(name: "찰리", age: 20),
    Friend(name: "레이첼", age: 30),
    Friend(name: "수잔", age: 30)
]

// reduce의 1번째 사용: 총 값 구하기
// 0으로 초기값 설정, partialResult는 초기값으로 되고 계속 더해지면서 축적됌
let totalAge = myFriends.reduce(0) { partialResult, aFriend in
    return partialResult + aFriend.age
}
totalAge

// reduce의 2번째 사용: age를 기준으로 묶기
// 인자가 1번째와 달라진다. into에는 형태를 설정
let groupedFriends = myFriends.reduce(into: [:]) { partialResult, reduce_Friend in
    return partialResult[reduce_Friend.age] = myFriends.filter({ filter_friend in
        reduce_Friend.age == filter_friend.age
    })
}

groupedFriends
