//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by 이성현 on 2023/10/31.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle : Angle
    
    var body: some View {
            BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5)) // 각도가 높을수록 오른쪽으로 돌아간다.
    
}
