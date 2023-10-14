// 콤바인을 통해 iOS에서 비동기적인 이벤트들을 처리한다.
// publisher가 존재(데이터를 내보내는 역할, <이벤트데이터랑 에러타입>을 같이 보낸다)
// 그 이후 subscriber가 이벤트데이터를 받을 수 있게 된다.
// 예시로 Timer, NotificationCenter, URLSession 등이 있다.

import UIKit
import Combine

// publisher 생성 , Sequence를 보내는데 output = [Int]가 되고 failertype이 Never가 되는것(Publishers 구조를 보면 나옴) == <output, failertype>
var myIntArrayPublisher : Publishers.Sequence<[Int], Never> = [1,2,3].publisher

// 이후 구독을 해야 데이터를 받을 수 있다.
// sink 를 사용
myIntArrayPublisher.sink(receiveCompletion: { completion in
    switch completion{ // completion이 무슨 종류인지 확인하는 switch문
    case .finished:
        print("완료")
    case .failure(let error): // 에러 발생(Never가 들어왔기 때문에 오류가 발생하지 않음)
        print("에러발생: \(error)")
    }
}, receiveValue: { receivedValue in
    print("값을 받았다 : \(receivedValue)")
})

// 기본 publisher 방법

// 1. notification 생성
var myNotification = Notification.Name("com.devJeongDaeRi.customNotification") //보통 이름을 집어넣는다(어플)

// 2. publisher 생성
var myDefaultPublisher : NotificationCenter.Publisher = NotificationCenter.default.publisher(for: myNotification)

// 4. subscriber 생성(보낸 이벤트를 받는것)
var mySubscription : AnyCancellable?

mySubscription = myDefaultPublisher.sink(receiveCompletion: { completion in
    switch completion{ // completion이 무슨 종류인지 확인하는 switch문
    case .finished:
        print("완료")
    case .failure(let error): // 에러 발생(Never가 들어왔기 때문에 오류가 발생하지 않음)
        print("에러발생: \(error)")
    }
}, receiveValue: { receivedValue in
    print("값을 받았다 : \(receivedValue)")
})

// 3. event 보내기(notification을 보내겠다. 이름이 myNotification인 걸)
NotificationCenter.default.post(Notification(name: myNotification))
// 3_1. 위 코드 실행 시 event 호출

// 5. 받고 나서 publisher는 메모리에 남아있음. => 메모리에서 해제해줘야 할 필요가 있음
// 자료형이 AnyCancellable 이기 때문에 cancel()을 통해서 메모리에서 해제
mySubscription?.cancel()

//KVO - key value observing(키와 값을 계속 관찰하는 것)
class MyFriend{
    var name = "철수"{
        didSet{
            print("name - didSet() : ", name)
        }
    }
}

var myFriend = MyFriend()

//["영수"].publisher 여기까지가 publisher를 생성한 것
// 그 이후 assign을 통해서 구독을 할 수 있음
// 그리고 나오는 값이 AnyCancellable이 된다.
var myFriendSubscription : AnyCancellable = ["영수"].publisher.assign(to: \.name, on: myFriend)

// 위 코드의 뜻은 "영수"라는 이름으로 구독을 하게 되고 해당 이름으로 값이 설정되게 된다. didSet을 통해 영수로 바뀐 걸 확인할 수 있다.
