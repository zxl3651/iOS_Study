//
//  ContentView.swift
//  Total_Tutorial_1~8
//
//  Created by 이성현 on 2023/10/11.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        VStack(alignment: .center){
            
            NavigationView {
                VStack ( spacing: 30){
                    Text("예제 08")
                        .font(.largeTitle)
                    Text("지금까지 만든 예제화면 연결!")
                        .font(.title)
                    NavigationLink(destination: Example_1(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("두 수를 입력받아 사칙연산 구해보기!")
                                .tint(.black)
                            Label("EX1 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_2(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("제주도의 귤 박스의 수와 남은 귤 개수 구하기!")
                                .tint(.black)
                            Label("EX2 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_3(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("백의 자리 이하를 버리기!")
                                .tint(.black)
                            Label("EX3 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_4(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("일의 자리를 1로 바꾸기!")
                                .tint(.black)
                            Label("EX4 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_5(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("각 점수의 합계와 평균 구해보기!")
                                .tint(.black)
                            Label("EX5 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_6(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("초를 입력받아 [시,분,초] 형태로 출력하기!")
                                .tint(.black)
                            Label("EX6 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                    NavigationLink(destination: Example_7(), label: {
                        VStack(alignment:.center, spacing: 10){
                            Text("시급계산기 앱 만들어보기!")
                                .tint(.black)
                            Label("EX7 View", systemImage: "arrowshape.right.fill")
                        }
                    })
                }
            }
            
        }
        .padding()
    }
}


#Preview {
    MainView()
}
