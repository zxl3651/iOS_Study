//
//  FirstTabView.swift
//  DataPersistenceEX01
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct FirstTabView: View {
    
    @AppStorage("colorindex") private var colorIndex = 0
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "blue"]
    
    var body: some View {
        
        VStack {
            
            Text("컬러를 선택하세요!")
                .font(.largeTitle)
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< colornames.count, id: \.self) {
                    Text(colornames[$0])
                        .foregroundColor(colors[$0])
                }
            }
            .pickerStyle(.wheel)
        }
    }
}

#Preview {
    FirstTabView()
}
