//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VstackView()
            VstackView()
            VstackView()
        }
        .padding(20)
        .background(Color.yellow)
    }
}

// 1. 같은 파일에 선언해서 사용
//struct VstackView: View {
//    var body: some View {
//        VStack {
//            Text("1!")
//                .fontWeight(.bold)
//                .font(.largeTitle)
//            Text("2!")
//                .fontWeight(.bold)
//                .font(.largeTitle)
//            Text("3!")
//                .fontWeight(.bold)
//                .font(.largeTitle)
//        }
//        .padding(30.0)
//        .background(Color.green)
//    }
//}

#Preview {
    ContentView()
}
