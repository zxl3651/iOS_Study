//
//  ContentView.swift
//  DataPersistenceEX03
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("myname") var name : String = ""
    
    var body: some View {
        
        VStack {
            
            Text("사용자의 이름을 입력하세요!")
                .font(.largeTitle)
            
            TextEditor(text: $name)
                .padding()
                .background(Color.yellow.opacity(0.2))
                .foregroundColor(Color.black)
                .font(Font.system(size: 50))
                .frame(width: 180, height: 100)
                .cornerRadius(25)
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
