import UIKit

let myFriends : [String : Int] = ["철수" : 19, "수잔" : 23, "제임스" : 30]

// for문 사용해서 반복
for (key, value) in myFriends{
    print("이름은 \(key), 나이는 \(value) ")
}

// forEach 사용해서 반복
myFriends.forEach { (key: String, value: Int) in
    print("이름은 \(key), 나이는 \(value) ")
}

// key값만 가져오기
myFriends.keys.forEach { key in
    print("이름은 \(key)")
}

// value값만 가져오기
myFriends.values.forEach { value in
    print("나이는 \(value)")
}
