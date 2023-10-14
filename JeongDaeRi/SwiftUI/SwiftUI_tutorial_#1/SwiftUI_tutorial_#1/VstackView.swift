//
//  VstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI

// 2. 새로운 파일을 생성해 사용
struct VstackView: View {
    
    // 데이터를 연동시킨다.
    @Binding var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        
        // @Binding 프로퍼티 랩퍼(property wrapper)가 적용된 녀석을 가져오기 위해서는 변수 명 앞에 _ 를 붙여주어야 한다!
        _isActivated = isActivated
        // 그래서 self.isActivated 가 안되는 이유는
        // self로 접근해 가져온 것의 자료형은 Bool 이기 때문에 자료형이 맞지 않아 대입이 되지 않는 것!
        
    }
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(isActivated ? Color.green : Color.red)
        .padding(isActivated ? 10 : 0)
    }
}

#Preview {
    VstackView()
}
