//  Copyright 2019 Kakao Corp.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation
import Alamofire
import KakaoSDKCommon

#if swift(>=5.8)
@_documentation(visibility: private)
#endif
public class AuthRequestAdapter : RequestInterceptor {
    public init() {}
    
    public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var urlRequest = urlRequest
                
        if let accessToken = AUTH.tokenManager.getToken()?.accessToken {
            urlRequest.headers.add(.authorization(bearerToken: accessToken))
        }
        else {
            return completion(.failure(SdkError(reason: .TokenNotFound)))
        }
        
        urlRequest.setValue(Constants.kaHeader, forHTTPHeaderField: "KA")
        return completion(.success(urlRequest))
    }
}
