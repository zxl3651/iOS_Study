//
//  Example_02.swift
//  SwiftUI_example
//
//  Created by 이성현 on 2023/10/16.
//

import SwiftUI

struct Example_02: View {
    
    @State private var count : Int = 0
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("\(count)")
            
            Spacer()
            
            Button(action: {countClicked()}, label: {
                Text("COUNT")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(5)
                    .background(Color.indigo)
                    .cornerRadius(5)
            })
            
        }
        .padding(.horizontal)
        
    }
    func countClicked() {
        count += 1
    }
}

#Preview {
    Example_02()
}
