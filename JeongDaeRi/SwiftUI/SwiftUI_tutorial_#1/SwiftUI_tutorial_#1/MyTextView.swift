//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI

struct MyTextView: View {
    
    @State private var index : Int = 0
    @Binding var isActivated : Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .onTapGesture {
            print("배경 아이템이 클릭되었다.")
            
            if(index == backgroundColors.count - 1){
                index = 0
            } else {
                index += 1
            }
        }
    }
}

#Preview {
    MyTextView()
}
