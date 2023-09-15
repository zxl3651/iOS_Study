import UIKit

class Sword{
    
    var durability : Int = 100
    
    var itemInfo : String{
        // get {} 생략가능. 보통 set과 함께 쓰기위해서 사용함
        get{ // itemInfo 에 접근할때마다 해당 로직을 타서 return 해줌.
            switch durability{
            case 50...100:
                return "좋은 검"
            case 10..<50:
                return "낡은 검"
            default:
                return "부서진 검"
            }
        }
    }
    func attackMonster(){
        self.durability -= 40
    }
}

let mySword = Sword()
mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

