import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var grade = (swift: "", iOS: "", Web: "")
    @State private var sum : String = ""
    @State private var avg : String = ""
    
    var body: some View {
        Text("예제 05").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("swift 점수를 입력하세요", text: $grade.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("iOS 점수를 입력하세요", text: $grade.1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Web 점수를 입력하세요", text: $grade.2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("합계와 평균 구하기")
            })
            HStack{
                Text("합계: ")
                Text(sum)
                Text("결과: ")
                Text(avg)
            }
        }
        .padding(10)
    }
    
    func calculate(){
        sum = "\(Int(grade.0)! + Int(grade.1)! + Int(grade.2)!)"
        avg = "\((Int(grade.0)! + Int(grade.1)! + Int(grade.2)!) / 3)"
    }
}

PlaygroundPage.current.setLiveView(ContentView().padding(250))
