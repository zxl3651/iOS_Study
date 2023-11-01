//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 이성현 on 2023/11/01.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView{
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())  // 디스플레이 가장자리까지 확장하는 수정자
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
