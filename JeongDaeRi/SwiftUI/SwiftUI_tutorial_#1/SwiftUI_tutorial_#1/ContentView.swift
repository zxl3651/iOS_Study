//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI

struct ContentView: View {
    
    
    // @State = 값의 변화를 감지 -> 변화가 감지되면 뷰에 적용!
    @State private var isActivated : Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    
                    VstackView(isActivated: $isActivated)
                    VstackView(isActivated: $isActivated)
                    VstackView(isActivated: $isActivated)
                    
                } // HStack
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스처 추가
                .onTapGesture {
                    
                    // 애니메이션과 함께
                    withAnimation {
                        isActivated.toggle()
                    }
                    
                } // Hstack
                
                // 네비게이션 버튼(링크)
                NavigationLink {
                    MyTextView(isActivated: $isActivated)
                } label: {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
            

            
        } // NavigationView
        
       
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
