import SwiftUI
import PlaygroundSupport

struct ContentView:View {
    
    @State private var orange : String = ""
    @State private var box : String = ""
    @State private var boxNum : String = ""
    @State private var left : String = ""
    
    var body: some View {
        
        VStack(alignment:.center, spacing: 10){
            Text("예제 02")
                .font(.title)
            TextField("귤?", text: $orange)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("한 박스 개수?", text: $box)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: Calculator, label: {Text("계산하기")})
        }
        VStack(spacing: 10){
            Text("    귤 박스의 수? \(boxNum)    ")
            Text("    남은 귤 수? \(left)    ")
        }
        .padding(100)
        
    }
    
    func Calculator(){
        boxNum = "\(Int(orange)! / Int(box)!)"
        left = "\(Int(orange)! % Int(box)!)"
    }
    
}


// Present the view controller in the Live View window
PlaygroundPage.current.setLiveView(ContentView().padding(250))
