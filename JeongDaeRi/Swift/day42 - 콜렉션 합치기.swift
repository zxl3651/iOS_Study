import UIKit

// 콜렉션의 종류 - list [], set <>, dictionary [:]

let myFriends = ["철수", "영희", "수잔"]

let otherFriends = ["제임스", "존슨", "존시나"]
//let otherFriends : Set<String> = ["제임스", "존슨", "존시나"] 으로 변경해도 더해지며, String 배열로 결과가 나온다.


//다른 방법
// myFriends.append(contentsOf: otherFriends) => 이때는 추가하는 개념이라 let이 아닌 var를 사용해야함
let totalFriends = myFriends + otherFriends
totalFriends
