//
//  LifecycleDemoApp.swift
//  LifecycleDemo
//
//  Created by 이성현 on 2023/10/26.
//

/**
 # 앱의 상태 5가지

 - NotRunning : 앱이 실행되지 않는 상태(메모리 off)
 - Inactive       : 앱이 실행 중인 상태 그러나 아무런 이벤트를 받지 않는 상태
 - Active          : 앱이 실행 중이며 이벤트가 발생환 상태
 - Background : 앱이 백그라운드에 있는 상태 그러나 실행되는 코드가 있는 상태(메모리 on)
 - Suspend      : 앱이 백그라운드에 있고 실행되는 코드가 없는 상태(메모리 on, 잠자고 있는 상태)
 */

import SwiftUI

@main
struct LifecycleDemoApp: App {
    // 현재 화면의 상태를 저장하기 위한 @Environment 속성
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("활성화")
            case .inactive:
                print("비활성화")
            case .background:
                print("백그라운드")
            default:
                print("Unknown scenephase")
            }
        }
    }
}
