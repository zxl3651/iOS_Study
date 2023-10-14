import UIKit

// 레인지라고 함
// 0...5 의 뜻은 0,1,2,3,4,5를 뜻한다.

// 0..<5 의 뜻은 0,1,2,3,4를 뜻한다.

for index in 0...5 {
    print("호호 index: \(index)")
}

for index in 0..<5 {
    print("호호 index: \(index)")
}

for index in 0..<5 where index % 2 == 0 {
    print("호호 짝수 index: \(index)")
}

//빈 배열을 만드는 두가지 방법
//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
