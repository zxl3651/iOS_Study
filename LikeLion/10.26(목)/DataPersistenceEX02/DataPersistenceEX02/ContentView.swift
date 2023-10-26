//
//  ContentView.swift
//  DataPersistenceEX02
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("index") var storeIndex = 0
    
    var body: some View {
        
        TabView(selection: $storeIndex){
            
            FirstTabView()
                .tabItem {
                    Image(systemName: "01.circle.fill")
                    Text("First")
                }
                .tag(0)
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle.fill")
                    Text("Second")
                }
                .tag(1)
            
            ThirdTabView()
                .tabItem {
                    Image(systemName: "03.circle.fill")
                    Text("First")
                }
                .tag(2)
            
            FourthTabView()
                .tabItem {
                    Image(systemName: "04.circle.fill")
                    Text("Second")
                }
                .tag(3)
            
        }
        
    }
}

#Preview {
    ContentView()
}
