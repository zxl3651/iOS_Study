//
//  EX02.swift
//  AlignmentEX
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

struct EX02: View {
    
    @State private var current_img = true
    
    var body: some View {
        VStack{
            Image(systemName: current_img ? "square.and.arrow.up" : "square.and.arrow.down")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            HStack{
                
                Spacer()
                
                Button("UP", action: {
                    current_img = true
                })
                    .frame(width: 80)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(5)
                
                Spacer()
                
                Button("DOWN", action: {
                    current_img = false
                })
                    .frame(width: 80)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(5)
                
                Spacer()
            }
            
            Spacer()
            
            Image(systemName: current_img ? "square.and.arrow.down" : "square.and.arrow.up")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    EX02()
}
