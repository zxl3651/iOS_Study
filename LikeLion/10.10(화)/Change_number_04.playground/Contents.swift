import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    @State private var num : String = ""
    @State private var answer : String = ""
    
    var body: some View {
        Text("예제 04").font(.title)
        
        VStack(alignment: .center, spacing: 50){
            TextField("수를 입력하세요", text: $num)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("일의 자리 바꾸기")
            })
            HStack{
                Text("결과: ")
                Text(answer)
            }
        }
        .padding(10)
    }
    
    func calculate(){
        let tmp1 : Int = Int(num)!
        answer = "\(tmp1 / 10 * 10 + 1)"
    }
}

PlaygroundPage.current.setLiveView(ContentView().padding(250))
