//
//  SecondTabView.swift
//  DataPersistenceEX01
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct SecondTabView: View {
    
    @AppStorage("colorindex") private var colorIndex = 0
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "blue"]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("선택한 백그라운드 색깔은 \n\(colornames[colorIndex]) 입니다.")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(colorIndex == 0 ? Color.white : Color.black)
            
            Spacer()
        }
        .background(colors[colorIndex])
        
    }
}

#Preview {
    SecondTabView()
}
