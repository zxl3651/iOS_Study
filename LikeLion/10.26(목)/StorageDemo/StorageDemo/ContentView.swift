//
//  ContentView.swift
//  StorageDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView{
            
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage")
                }
        }
        
    }
    
}

#Preview {
    ContentView()
}
