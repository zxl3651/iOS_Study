//
//  Example_03.swift
//  SwiftUI_example
//
//  Created by 이성현 on 2023/10/16.
//

import SwiftUI

struct Example_03: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
                await doSomething()
            }
        }, label: {
            Text("Do Something")
        })
    }
    
    func doSomething() async {
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        print("start \(Date())")
        async let result = takeTooLong()
        
        // takeTooLong() 함수의 리턴값이 오지 않았지만 실행 가능
        print("After async-let \(Date())")
        
        // async 상수 result에 값이 올때까지 여기서 실행이 멈춤
        print("result = \(await result)")
        print("end \(Date())")
    }
    
    func takeTooLong() async -> Date {
        sleep(5)
        return Date()
    }
}

#Preview {
    Example_03()
}
