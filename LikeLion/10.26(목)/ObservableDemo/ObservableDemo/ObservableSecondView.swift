//
//  ObservableSecondView.swift
//  ObservableDemo
//
//  Created by 이성현 on 2023/10/26.
//

import SwiftUI

struct ObservableSecondView: View {
    
    @EnvironmentObject var timerData : TimerData
    
    
    var body: some View {
        
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.largeTitle)
        }
    }
    
}

#Preview {
    ObservableSecondView().environmentObject(TimerData())
}
