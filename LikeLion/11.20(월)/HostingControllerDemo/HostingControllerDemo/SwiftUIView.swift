//
//  SwiftUIView.swift
//  HostingControllerDemo
//
//  Created by 이성현 on 2023/11/20.
//

import SwiftUI

struct SwiftUIView: View {
    
    var text : String
    
    var body: some View {
        VStack{
            Text(text)
            HStack{
                Image(systemName: "smiley")
                Text("This is a SwiftUI View")
            }
        }
        .font(.largeTitle)
    }
}

//#Preview {
//    SwiftUIView()
//}
