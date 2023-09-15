import UIKit

// range와 같이 사용한다.
var statusCode = 403

// contains() 사용
if (400..<500).contains(statusCode){
    print("발견")
}

// 패턴 매칭 연산자 ~=
// ~= 를 통해 더 간결하게 표현할 수 있다.
if 400..<500 ~= statusCode{
    print("패턴 매칭으로 발견")
}
