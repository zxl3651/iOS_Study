//
//  AppStorageView.swift
//  StorageDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("mytext") var editorText : String = "Sample Text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    AppStorageView()
}
