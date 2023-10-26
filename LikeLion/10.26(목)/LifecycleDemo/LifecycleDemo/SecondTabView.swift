//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var text : String = ""
    
    var body: some View {
        
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) { value in
                print("onChange triggered", value)
            } // 앱 내에서 상태가 변경될 때마다 (여기에선 키를 입력할 때마다)
    }
}

#Preview {
    SecondTabView()
}
