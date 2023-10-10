//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil.and.scribble")
            Text("Hello, world!")
        }.padding(100)
        HStack {
            Image(systemName: "pencil.and.scribble")
            Text("Hello, world!")
        }
    }
}


PlaygroundPage.current.setLiveView(ContentView())
