//
//  Example_9.swift
//  Example_9~11
//
//  Created by 이성현 on 2023/10/12.
//

import SwiftUI

struct Example_9: View {
    @State private var input : Int?
    @State private var answer : String = ""
    @State private var flag = false
    
    var body: some View {
        Text("예제 09").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("정수를 입력하세요", value: $input, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("홀수 또는 짝수 판별하기!")
            })
            HStack{
                if flag{
                    Text("\(input!)는(은) \(answer)입니다.")
                }
            }
        }
        .padding(10)
    }
    func calculate(){
        flag = true
        answer = input! % 2 == 0 ? "짝수" : "홀수"
    }
}

#Preview {
    Example_9()
}
