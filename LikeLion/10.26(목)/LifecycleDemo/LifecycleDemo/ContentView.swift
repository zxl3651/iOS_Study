//
//  ContentView.swift
//  LifecycleDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstTabView()
                .tabItem{
                    Image(systemName: "01.circle")
                    Text("First")
                }
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
        }
    }
}

#Preview {
    ContentView()
}
