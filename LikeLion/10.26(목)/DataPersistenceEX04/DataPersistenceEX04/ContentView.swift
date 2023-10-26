//
//  ContentView.swift
//  DataPersistenceEX04
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 40){
                
                NavigationLink(destination: FirstNavigationView(), label: {
                    Text("첫 번째 화면")
                })
                NavigationLink(destination: SecondNavigationView(), label: {
                    Text("두 번째 화면")
                })
                NavigationLink(destination: ThirdNavigationView(), label: {
                    Text("세 번째 화면")
                })
                NavigationLink(destination: FourthNavigationView(), label: {
                    Text("네 번째 화면")
                })
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
