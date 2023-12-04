//
//  API_KEY.swift
//  KakaoLoginAPI
//
//  Created by 이성현 on 2023/12/04.
//

import Foundation

extension Bundle {
    var API_KEY : String? {
        guard let file = self.path(forResource: "TranslateInfo", ofType: "plist"),
              let resource = NSDictionary(contentsOfFile: file),
              let key = resource["KakaoLogin"] as? String else {
            print("에러 발생")
            return nil
        }
        return key
    }
}
