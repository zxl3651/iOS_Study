//
//  EX01.swift
//  AlignmentEX
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

struct EX01: View {
    var body: some View {
        VStack {
            VStack {
                Image("ios_img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,height: 100)
                .cornerRadius(50)
                
                HStack{
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                }
                
                HStack{
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                    Image("ios_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    .cornerRadius(50)
                }
                
            }
            Spacer()
            HStack{
                
                Button("BUTTON", action: {})
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(5)
                
                Spacer()
                
                Button("BUTTON", action: {})
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(5)
                
                Spacer()
                
                Button("BUTTON", action: {})
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(5)
            }
                
        }
        .padding()
    }
}

#Preview {
    EX01()
}
