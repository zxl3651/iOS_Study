import UIKit

let friends = ["영희", "철수", "존슨"]
var pets = ["야옹이", "댕댕이", "찍찍이"]
// 두 콜렉션을 zip을 이용해서 쌍으로 묶을 수 있다.
let friendsandpets = zip(friends, pets)

for aPair in friendsandpets{
    print("\(aPair.0), \(aPair.1)")
}
// 개수가 서로 다르면 최소개수에 맞춰서 짝이 지어진다.
pets = ["야옹이", "댕댕이", "찍찍이", "소리"]

for aPair in friendsandpets{
    print("\(aPair.0), \(aPair.1)")
}

// 응용예시
let people = ["영희", "철수","존슨"]
let numbers = (1...Int.max) // Int.max는 무한대까지 간다. 짝에 맞춰 인덱스 부여가 가능

for aPair in zip(people, numbers){
    print("\(aPair.0), \(aPair.1)")
}
