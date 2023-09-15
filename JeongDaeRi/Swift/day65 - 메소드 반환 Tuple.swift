import UIKit

func someFunction() -> (first: String, second: String){
    return ("하하하", "호호호")
}

let result = someFunction()
print(result.first)
print(result.second)
print(result.0)
print(result.1)

// 응용(최댓값과 최솟값을 반환하는 메소드)
let numbers = [1, 5, 10, 8, 2, 3]

func minMax(array: [Int]) -> (min: Int, max: Int){
    var minNumber = array[0]
    var maxNumber = array[0]
    for i in 1..<array.count{
        if array[i] > maxNumber{
            maxNumber = array[i]
        }
        if array[i] < minNumber{
            minNumber = array[i]
        }
    }
    return (minNumber, maxNumber)
}

print(minMax(array: numbers))
