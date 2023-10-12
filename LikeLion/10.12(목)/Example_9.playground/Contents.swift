import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var input = 0
    @State private var answer : String = ""
    
    var body: some View {
        Text("예제 07").font(.title)
        
        VStack(alignment: .center, spacing: 20){
            TextField("정수를 입력하세요", value: $input, format: .number)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: calculate, label: {
                Text("급여 구하기")
            })
            HStack{
                Text("\(input)는(은) \(answer)입니다.")
            }
        }
        .padding(10)
    }
    func calculate(){
        
    }
}

PlaygroundPage.current.setLiveView(ContentView().padding(100))
