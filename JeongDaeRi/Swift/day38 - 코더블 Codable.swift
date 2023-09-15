import UIKit

let jsonFromServer = """
{
    "nick_name": "개발하는 정대리",
    "job": "유튜바, 개발자",
    "user_name": "dev_jeongdaeri",
}
"""

// de code = 제이슨(json)을 클래스, 스트럭트로 바꾸기
// en code = 제이슨(json)으로 만들기

//EnCodable & Decodable
struct User : Decodable {
    
    var nickname: String? // 옵셔널로 처리하는 이유: 데이터가 잘못됐을때 해당 부분을 제외하고 만들기 위해
    var job: String
    var myUserName: String
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name" // 서버에서 nick_name로 들어오는 걸 여기 구조체에서는 nickname으로 쓰겠다는 뜻 만약 'nick_name2'처럼 잘못 입력했을땐 옵셔널 설정하지않으면 에러 발생!!!
        case job
        case myUserName = "user_name" // 서버에서 user_name으로 들어오는 걸 myUserName으로 쓰겠다는 뜻
    }
    
    
    /// json데이터를 User 구조체로 받게하는 함수
    /// - Parameter jsonString: json 데이터
    /// - Returns: User 자신 or nil
    static func getUserFromJson(_ jsonString: String) -> Self? { //Self == User랑 똑같은 뜻
        guard let jsonData : Data = jsonString.data(using: .utf8) else {
            return nil
        }
        
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            //                                  (자료형태)         (json 데이터)
            print("user: \(user)")
            return user
        } catch {
            print("에러발생: \(error.localizedDescription)")
            return nil
        }
        
    }
}

let user = User.getUserFromJson(jsonFromServer)




