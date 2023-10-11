//
//  Example_6.swift
//  Total_Tutorial_1~8
//
//  Created by 이성현 on 2023/10/11.
//

import SwiftUI

struct Example_6: View {
    @State private var input = 0
    @State private var hour = 0
    @State private var min = 0
    @State private var sec = 0
    
    var body: some View {
        Text("예제 06").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("초를 입력하세요", value: $input, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("[시, 분, 초] 구하기")
            })
            HStack{
                Text("\(hour)")
                Text("시 ")
                Text("\(min)")
                Text("분 ")
                Text("\(sec)")
                Text("초 입니다!")
            }
        }
        .padding(10)
    }
    func calculate(){
        hour = input / 3600
        min = (input % 3600) / 60
        sec = (input % 3600) % 60
    }
}

#Preview {
    Example_6()
}
