//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 이성현 on 2023/10/30.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
