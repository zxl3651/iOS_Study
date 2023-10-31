//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by 이성현 on 2023/10/31.
//

import SwiftUI

struct BadgeSymbol: View {
    
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030 // 높으면 높을수록 상하로 찢어지는 느낌
                let middle = width * 0.5
                let topWidth = width * 0.226 // 높으면 높을수록 좌우간격이 넓어진다.
                let topHeight = height * 0.488 // 높으면 높을수록 상하간격이 넓어진다.
                
                // top portion(심볼의 상단 부분 그리기)
                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: spacing)
                ])
                
                // bottom portion(심볼의 하단 부분 그리기)
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
            .fill(Self.symbolColor)
        }
    }
}

#Preview {
    BadgeSymbol()
}
