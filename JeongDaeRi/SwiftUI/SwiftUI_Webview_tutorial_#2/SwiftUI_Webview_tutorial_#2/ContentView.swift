//
//  ContentView.swift
//  SwiftUI_Webview_tutorial_#2
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.naver.com")
                } label: {
                    Text("네이버")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                } // NavigationLink
                
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.daum.net")
                } label: {
                    Text("다음")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                } // NavigationLink
                
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.google.com")
                } label: {
                    Text("구글")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                } // NavigationLink
                
            } // HStack
        }
    }
}

#Preview {
    ContentView()
}
