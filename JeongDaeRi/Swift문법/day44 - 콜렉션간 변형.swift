import UIKit

let numbers = [1,1,1,5,5,9,7]
// 배열 -> Set으로 변형
let uniqueNumbers = Set(numbers)
uniqueNumbers

// Set -> 배열로 변형
var uniqueNumbersArranged = Array(uniqueNumbers)
// 그 이후 정렬
uniqueNumbersArranged.sort()
