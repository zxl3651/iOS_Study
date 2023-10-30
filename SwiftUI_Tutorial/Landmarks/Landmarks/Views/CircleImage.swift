//
//  CircleImage.swift
//  Landmarks
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay { // 다른 원을 만든 다음 테두리를 추가하는 역할
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
