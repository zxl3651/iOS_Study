import UIKit

// 배열안에 배열이 들어있는 2차원 배열
let myFriends = [["철수"], ["영희"], ["제임스", "본드"], ["스티브","잡스"], ["개발하는", "정대리"] ]

// 2차원인 배열을 1차원으로 flat(납작하게) 만들어준다.
let flatArray = myFriends.flatMap { aFriend in
    return aFriend
}

print(flatArray)
