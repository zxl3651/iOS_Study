import UIKit

// stride를 통해 범위안에 반복 처리가 가능하다.
// from 시작, to 끝, by 만큼 (to는 해당 숫자 미만, python의 for range(~)와 동일하다.
for countdown in stride(from: 5, to: 0, by: -1){
    print("카운트 다운: \(countdown)")
}

for countup in stride(from: 0, to: 5, by: 1){
    print("카운트 업: \(countup)")
}

// from 시작, through 끝(포함), by 만큼
for countdown in stride(from: 5, through: 0, by: -1){
    print("카운트 다운: \(countdown)")
}

// stride를 이용해서 배열을 쪼갤수 있다.
extension Array{
    func chunks(_ chunkSize: Int) -> [[Element]]{ // return값은 이중배열
        // stride를 통해 값이 나오게 되고, map을 통해 형태를 바꾸는 것(이중 배열)
        return stride(from: 0, to: self.count, by: chunkSize).map { num in
            // Array()를 사용해 배열로 만들고, num + chunkSize만큼 잘라 return한다.(클로저여서 return문 생략 가능
            Array(self[num..<Swift.min(num + chunkSize, self.count)])
        }
    }
}

let numbers = Array(1...10)
let chunksNumbers = numbers.chunks(2) // 쪼개서 이중 배열로 만듦

for item in chunksNumbers{
    print("item : \(item)")
    for index in item{
        print("index : \(index)")
    }
}
