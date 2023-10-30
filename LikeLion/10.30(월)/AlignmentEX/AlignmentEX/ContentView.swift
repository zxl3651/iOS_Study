//
//  ContentView.swift
//  AlignmentEX
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView {
            VStack(spacing: 30){
                Text("UI 예제 확인하기!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                NavigationLink("UI예제 04 보러가기", destination: EX01())
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
                NavigationLink("UI예제 05 보러가기", destination: EX02())
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
