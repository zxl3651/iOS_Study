//
//  Example_7.swift
//  Total_Tutorial_1~8
//
//  Created by 이성현 on 2023/10/11.
//

import SwiftUI

struct Example_7: View {
    @State private var input = 0
    @State private var money = 0
    
    var body: some View {
        Text("예제 07").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("근무시간을 입력하세요", value: $input, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("급여 구하기")
            })
            HStack{
                Text("총 급여는 \(money) 원 입니다.")
            }
        }
        .padding(10)
    }
    func calculate(){
        money = input < 9 ? input * 10000 : 80000 + (input - 8) * 15000
    }
}

#Preview {
    Example_7()
}
