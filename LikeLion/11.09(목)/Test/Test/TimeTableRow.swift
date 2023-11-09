//
//  TimeTableRow.swift
//  Test
//
//  Created by 이성현 on 2023/11/09.
//

import SwiftUI

struct TimeTableRow: View {
    var title : String
    var place : String
    var width : CGFloat
    var height : CGFloat
    var color : Color
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(color)
                .opacity(0.7)
                .cornerRadius(8)
            
            VStack (alignment: .leading){
                Text(title)
                    .font(.system(size: 15))
                    .font(.headline)
                    .bold()
                Text(place)
                    .font(.system(size: 10))
                
            }
        }
    }
}

#Preview {
    TimeTableRow(title: "캡스톤디자인", place: "IT(2119)", width: 120, height: 120, color: .blue)
}
