//
//  Example_10.swift
//  Example_9~11
//
//  Created by 이성현 on 2023/10/12.
//

import SwiftUI

struct Example_10: View {
    @State private var num1 : Int?
    @State private var num2 : Int?
    @State private var answer : String = ""
    @State private var flag = false
    
    var body: some View {
        Text("예제 10").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("첫 번째 정수를 입력하세요", value: $num1, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("두 번째 정수를 입력하세요", value: $num2, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("두 수의 차이 확인하기!(절대값)")
            })
            HStack{
                if flag{
                    Text("두 수의 차의 절대값은 \(answer)입니다.")
                }
            }
        }
        .padding(10)
    }
    func calculate(){
        flag = true
        answer = "\(abs(num1! - num2!))"
    }
}

#Preview {
    Example_10()
}
