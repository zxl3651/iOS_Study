//
//  ContentView.swift
//  DataPersistenceEX01
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("mycolor") var color : String = ""
    
    var body: some View {
        
        TabView{
            FirstTabView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("color_choice")
                }
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("background_color")
                }
        }
        
    }
    
}

#Preview {
    ContentView()
}
