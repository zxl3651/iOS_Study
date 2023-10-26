//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct FirstTabView: View {
    
    @State var title = "View One"
    
    var body: some View {
        
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappeared triggered")
            })
            .task(priority: TaskPriority.background) {
                title = await changeTitle()
            }
    }
    
    func changeTitle() async -> String {
        sleep(5)
        return "비동기 처리 완료"
    }
}

#Preview {
    FirstTabView()
}
