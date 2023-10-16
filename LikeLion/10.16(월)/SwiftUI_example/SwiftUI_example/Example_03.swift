//
//  Example_03.swift
//  SwiftUI_example
//
//  Created by 이성현 on 2023/10/16.
//

import SwiftUI

struct Example_03: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Button(action: {}, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width)
                        .padding(5)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width, height: geometry.size.height / 4 * 3)
                        .padding(5)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width)
                        .padding(5)
                        .background(Color.indigo)
                        .cornerRadius(5)
                })
            }
            .frame(maxWidth: .infinity)
        }
        
    }
}

#Preview {
    Example_03()
}
