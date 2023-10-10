import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var num1 : String = ""
    @State private var answer : String = ""
    
    var body: some View {
        Text("예제 03").font(.title)
        
        VStack(alignment: .center, spacing: 50){
            TextField("수를 입력하세요", text: $num1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("백의 자리 이하 버리기")
            })
            HStack{
                Text("결과: ")
                Text(answer)
            }
        }
        .padding(10)
    }
    
    func calculate(){
        let tmp1 : Int = Int(num1)!
        answer = "\(tmp1 / 100 * 100)"
    }
}

PlaygroundPage.current.setLiveView(ContentView().padding(250))
