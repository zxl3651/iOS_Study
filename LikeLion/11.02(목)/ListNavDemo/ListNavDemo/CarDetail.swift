//
//  CarDetail.swift
//  ListNavDemo
//
//  Created by 이성현 on 2023/11/02.
//

import Foundation
import SwiftUI

// 상세 뷰 설계
struct CarDetail: View {

    let selectedCar: Car

    var body: some View {
        Form {
            Section {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()

                Text(selectedCar.name)
                    .font(.headline)

                Text(selectedCar.description)
                    .font(.body)

                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ?  "checkmark.circle" : "xmark.circle")
                }
            } header: {
                Text("Car Details")
            }

        }
    }
}

#Preview {
    CarDetail(selectedCar: carData[0])
}
