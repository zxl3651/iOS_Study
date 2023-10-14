import UIKit

var myArray = [3, 4, 88, 99, 5, 6, 7 , 8, 10, 20, 100]

var ascendingArray = myArray.sorted() //sorted는 반환하는 함수(오름차순)

myArray.sort() //sort는 myArray 자체가 변경이 되는 함수

var descendingArray = myArray.sorted(by: >) // 내림차순 반환

myArray.sort(by: >) 
