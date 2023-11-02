//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 이성현 on 2023/11/01.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            HStack{
                HStack {
                    if editMode?.wrappedValue == .active {
                        Button("Cancel", role: .cancel) {
                            draftProfile = modelData.profile
                            editMode?.animation().wrappedValue = .inactive
                        }
                    }
                    Spacer()
                    EditButton()
                }
            }
            
            if editMode?.wrappedValue == .inactive{
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear{
                        draftProfile = modelData.profile
                    }
                    .onDisappear(perform: {
                        modelData.profile = draftProfile
                    })
            }
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData()) // 해당 뷰는 미리보기를 사용하지 않지만 하위 뷰가 속성을 사용하기 때문에 수정자를 추가해줘야 한다!
}
