







import SwiftUI

struct ContentView: View {
    @State var selection = 0
    var body: some View {
        TabView (selection: $selection){
                Text("메인 화면")
                    .tabItem{
                        Image(systemName: "house")
                    }
                    .tag(0)
                
                VStack{
                    timetable
                }
                .tabItem {
                    Image(systemName: "table")
                }
                .tag(1)
                
                Text("게시판")
                    .tabItem{
                        Image(systemName: "newspaper")
                    }
                    .tag(2)
                
                Text("알림")
                    .tabItem{
                        Image(systemName: "bell")
                    }
                    .tag(3)
                
                Text("설정")
                    .tabItem{
                        Image(systemName: "gearshape")
                    }
                    .tag(4)
                
            }
        
    }
    
    @ViewBuilder
    var timetable : some View {
        
        VStack {
            HStack{
                VStack (alignment: .leading, spacing: 0){
                    Text("2023년 2학기")
                        .foregroundStyle(.red)
                        .font(.system(size: 14))
                        .bold()
                    
                    Text("시간표")
                        .font(.title)
                        .font(.system(size: 80))
                        .bold()
                }
                Spacer()
                HStack (spacing: 20){
                    Image(systemName: "plus.app")
                        .font(.system(size: 25))
                    Image(systemName: "trash")
                        .font(.system(size: 25))
                    Image(systemName: "list.dash")
                        .font(.system(size: 25))
                }
            }
            .padding()
                HStack (spacing: 70){
                    Text("월")
                    Text("화")
                    Text("수")
                    Text("목")
                    Text("금")
                }
                .padding(10)
                .border(.black, width: 0.6)
                ScrollView{
                    Grid(alignment: .top, horizontalSpacing: 20, verticalSpacing: 10) {
                        GridRow {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 0 {
                                    TimeTableRow(title: "인공지능", place: "IT(2104-2)", width: 60, height: 70, color: .blue)
                                } else if index == 1 {
                                    TimeTableRow(title: "데이터 베이스", place: "IT(3120)", width: 60, height: 140, color: .red)
                                } else if index == 2 {
                                    TimeTableRow(title: "소프트웨어 공학", place: "IT(10210)", width: 60, height: 70, color: .purple)
                                } else if index == 3 {
                                    TimeTableRow(title: "인공지능", place: "IT(2104-2)", width: 60, height: 140, color: .blue)
                                } else if index == 4 {
                                    TimeTableRow(title: "기계학습", place: "본관 2201", width: 60, height: 70, color: .yellow)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                        GridRow(alignment: .bottom) {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 1{
                                    TimeTableRow(title: "소프트웨어 공학", place: "IT(10210)", width: 60, height: 140, color: .purple)
                                } else if index == 2 {
                                    TimeTableRow(title: "데이터 베이스", place: "IT(3120)", width: 60, height: 70, color: .red)
                                } else if index == 3 {
                                    TimeTableRow(title: "사고와 표현", place: "본관 7777", width: 60, height: 70, color: .green)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                        GridRow {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 0{
                                    TimeTableRow(title: "기계학습", place: "본관 2201", width: 60, height: 140, color: .yellow)
                                } else if index == 2 {
                                    TimeTableRow(title: "기초프로그래밍", place: "IT(3134)", width: 60, height: 140, color: .cyan)
                                } else if index == 3 {
                                    TimeTableRow(title: "기초프로그래밍", place: "IT(3134)", width: 60, height: 140, color: .cyan)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                        GridRow (alignment: .bottom) {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 0{
                                    TimeTableRow(title: "데이터 베이스", place: "IT(3120)", width: 60, height: 140, color: .red)
                                } else if index == 1 {
                                    TimeTableRow(title: "기초프로그래밍", place: "IT(3134)", width: 60, height: 140, color: .cyan)
                                } else if index == 3 {
                                    TimeTableRow(title: "소프트웨어 공학", place: "IT(10210)", width: 60, height: 70, color: .purple)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                        GridRow (alignment: .bottom) {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 3{
                                    TimeTableRow(title: "데이터 베이스", place: "IT(3120)", width: 60, height: 140, color: .red)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                        GridRow {
                            ForEach(0..<5, id: \.self) { index in
                                if index == 0{
                                    TimeTableRow(title: "SW 기술영어", place: "IT(3120)", width: 60, height: 140, color: .indigo)
                                } else if index == 1 {
                                    TimeTableRow(title: "사고와 표현", place: "본관 7777", width: 60, height: 70, color: .green)
                                }
                                else {
                                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                                }
                            }
                        }
                    }
                    Spacer()
                }
            }
        
    }
}

#Preview {
    ContentView()
}
