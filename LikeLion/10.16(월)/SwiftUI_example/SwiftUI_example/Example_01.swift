//
//  Example_01.swift
//  SwiftUI_example
//
//  Created by 이성현 on 2023/10/16.
//

import SwiftUI

struct Example_01: View {
    
    
    @State private var text : String = "Hello, World!"
    @State private var str : String = "HELLO, WORLD!"
    
    var body: some View {
        VStack{
            // 라이언 이미지
            Image(systemName: "highlighter")
                .resizable()
                .frame(width: 300, height: 300)
            
            HStack{
                // 버튼(home)
                Button(action: {}, label: {
                    Text("Home")
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
                
                Spacer()
                
                // 텍스트
                Text(str)
                
                Spacer()
                
                // 버튼(Call)
                Button(action: {}, label: {
                    Text("CALL")
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
            } // HStack
            .padding(.horizontal)
            
            Spacer()
            
            HStack{
                // 텍스트 필드
                TextField(text: $text, label: {Text("테스트")})
                    .textFieldStyle(.roundedBorder)
                // 버튼
                Button(action: {helloBtnClicked()}, label: {
                    Text("HELLO BUTTON")
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
            }
            .padding(.horizontal)
            
        }
    }
    
    func helloBtnClicked(){
        str = text.uppercased()
    }
}

#Preview {
    Example_01()
}
