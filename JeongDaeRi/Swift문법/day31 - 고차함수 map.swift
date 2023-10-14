import UIKit

let friendsArray: [String] = ["철수", "영희", "수잔", "제임스", "마크"]

let myFriends = friendsArray.map{ aFriend in
    return "내 친구는 \(aFriend)"
}

let numberArray: [Int] = [22,33,44,55]

let myNumber = numberArray.map { aNumber in
    return "내 숫자는 \(aNumber)"
}

let dictionary : [String : String] = [ "고양이" : "야옹", "강아지":"멍멍", "새":"짹짹"]

let myDictionary = dictionary.map { (animal : String, sound:String) in
    return "\(animal) 울음소리는 \(sound)"
}
