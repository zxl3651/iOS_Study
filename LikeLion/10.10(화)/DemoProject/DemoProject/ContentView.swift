//
//  ContentView.swift
//  DemoProject
//
//  Created by 이성현 on 2023/10/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var num1 : String = ""
    @State private var num2 : String = ""
    @State private var plus : String = ""
    @State private var min : String = ""
    @State private var mul : String = ""
    @State private var div : String = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 50){
            TextField("첫번째 수", text: $num1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("두번째 수", text: $num2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("계산하기")
            })
            HStack{
                Text("더하기 결과: ")
                Text(plus)
            }
            HStack{
                Text("빼기 결과: ")
                Text(min)
            }
            HStack{
                Text("곱하기 결과: ")
                Text(mul)
            }
            HStack{
                Text("나누기 결과: ")
                Text(div)
            }
        }
        .padding(10)
    }
    
    func calculate(){
        let tmp1 : Int = Int(num1)!
        let tmp2 : Int = Int(num2)!
        plus = "\(tmp1 + tmp2)"
        min = "\(tmp1 - tmp2)"
        mul = "\(tmp1 * tmp2)"
        div = "\(tmp1 / tmp2)"
    }
}

#Preview {
    ContentView()
}
