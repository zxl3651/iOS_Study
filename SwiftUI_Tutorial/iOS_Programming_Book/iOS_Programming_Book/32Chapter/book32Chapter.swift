//
//  book32Chapter.swift
//  iOS_Programming_Book
//
//  Created by 이성현 on 2023/12/22.
//

import SwiftUI

struct book32Chapter : View {
    
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor : String?
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(colors, id: \.self, selection: $selectedColor) { color in
                Text(color).tag(color)
            }
            .navigationSplitViewColumnWidth(100)
        } detail: {
            Text(selectedColor ?? "No color selected")
        }
        .navigationSplitViewStyle(.automatic)
    }
}

#Preview {
    book32Chapter()
}
