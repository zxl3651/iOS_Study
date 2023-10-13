//
//  ContentView.swift
//  Example_9~11
//
//  Created by 이성현 on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 60){
                Text("예제 9 ~ 11번 풀기!")
                    .font(.largeTitle)
                    .bold()
                VStack(spacing: 20){
                    Text("홀수인지 짝수인지 판별해보기!")
                        .font(.title2)
                    NavigationLink(destination: Example_9(), label: {Text("예제 09번 풀러가기!")})
                }
                VStack(spacing: 20){
                    Text("큰 수에서 작은 수를 뺀 결과값 구하기!")
                        .font(.title2)
                    NavigationLink(destination: Example_10(), label: {Text("예제 10번 풀러가기!")})
                }
                VStack(spacing: 20){
                    Text("농구공을 담는 상자의 개수를 구하기!")
                        .font(.title2)
                    NavigationLink(destination: Example_11(), label: {Text("예제 11번 풀러가기!")})
                }
            }
        }
        NavigationView{
            VStack(spacing: 60){
                Text("예제 9 ~ 11번 풀기!")
                    .font(.largeTitle)
                    .bold()
                VStack(spacing: 20){
                    Text("홀수인지 짝수인지 판별해보기!")
                        .font(.title2)
                    NavigationLink(destination: Example_9(), label: {Text("예제 09번 풀러가기!")})
                }
                VStack(spacing: 20){
                    Text("큰 수에서 작은 수를 뺀 결과값 구하기!")
                        .font(.title2)
                    NavigationLink(destination: Example_10(), label: {Text("예제 10번 풀러가기!")})
                }
                VStack(spacing: 20){
                    Text("농구공을 담는 상자의 개수를 구하기!")
                        .font(.title2)
                    NavigationLink(destination: Example_11(), label: {Text("예제 11번 풀러가기!")})
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
