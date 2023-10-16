//
//  ContentView.swift
//  SwiftUI_example
//
//  Created by 이성현 on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            VStack(spacing:50){
                Text("UI 예제 01 ~ 03")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding()
                NavigationLink {
                    Example_01()
                } label: {
                    Text("예제 01 보러가기!")
                }
                NavigationLink {
                    Example_02()
                } label: {
                    Text("예제 02 보러가기!")
                }
                NavigationLink {
                    Example_03()
                } label: {
                    Text("예제 03 보러가기!")
                }
            }

        }
    }
}

#Preview {
    ContentView()
}
