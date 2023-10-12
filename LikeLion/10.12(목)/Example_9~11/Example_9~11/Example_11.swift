//
//  Example_11.swift
//  Example_9~11
//
//  Created by 이성현 on 2023/10/12.
//

import SwiftUI

struct Example_11: View {
    @State private var basketball : Int?
    @State private var answer : String = ""
    @State private var flag = false
    
    var body: some View {
        Text("예제 11").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("농구공의 개수를 입력하세요", value: $basketball, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("필요한 상자 개수 확인하기!")
            })
            HStack{
                if flag{
                    Text("필요한 상자의 수: \(answer)")
                }
            }
        }
        .padding(10)
    }
    func calculate(){
        flag = true
        answer = basketball! % 5 == 0 ? "\(basketball! / 5)" : "\(basketball! / 5 + 1)"
    }
}

#Preview {
    Example_11()
}
