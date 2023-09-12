import Foundation

let s1 = readLine()!
var answer : String = ""
for c in s1{
    if c.isUppercase {
        answer += c.lowercased()
    } else{
        answer += c.uppercased()
    }
}
print(answer)