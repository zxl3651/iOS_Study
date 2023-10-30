//
//  ContentView.swift
//  AligmentView
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

extension VerticalAlignment{
    private enum OneThird : AlignmentID{
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context.height / 3
        }
    }
    
    static let oneThird = VerticalAlignment(OneThird.self)
}

struct ContentView: View {
    var body: some View {
        VStack (spacing: 50) {
            VStack(alignment: .leading) {
                Text("This is some text")
                Text("This is some longer text")
                Text("This is short")
            }
            
            HStack(alignment: .firstTextBaseline, spacing: 50){
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
            VStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 120,height: 50)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        120.0 // 고정값
                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension.width / 3 // 비율
                    })
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension[HorizontalAlignment.trailing] // 가운데 기준선 기준 꼬리부분으로 맞추겠다는 의미
                    })
            }
        }
    }
}

#Preview {
    ContentView()
}
