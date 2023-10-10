//: A UIKit based Playground for presenting user interface
  
import UIKit
import SwiftUI
import PlaygroundSupport

// UIKit code
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//        
//        view.addSubview(label)
//        self.view = view
//    }
//}

struct ExampleView : View {
    
    @State private var verticalRotation : Double = 0
    @State private var horizontalRotation : Double = 0
    
    var body: some View {
        VStack{ //vertical Stack(수직)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(verticalRotation))
                .animation(.linear(duration:0.5), value: verticalRotation) // 2초동안 rotation으로 돌린다.
            Button(action: {
                verticalRotation = (verticalRotation < 360 ? verticalRotation + 90 : 0)
            }, label: {Text("Rotate")})
            Button(action: {
                verticalRotation = (verticalRotation > 0 ? verticalRotation - 90 : 360)
            }, label: {Text("Reverse")})
        }
        HStack{ //horizontal Stack(수평)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(horizontalRotation))
                .animation(.linear(duration:0.5), value: horizontalRotation) // 2초동안 rotation으로 돌린다.
            Button(action: {
                horizontalRotation = (horizontalRotation < 360 ? horizontalRotation + 90 : 0)
            }, label: {Text("Rotate")})
            Button(action: {
                horizontalRotation = (horizontalRotation > 0 ? horizontalRotation - 90 : 360)
            }, label: {Text("Reverse")})
        }
    }
}
// Present the view controller in the Live View window
// PlaygroundPage.current.liveView = MyViewController() // UIKit preview
PlaygroundPage.current.setLiveView(ExampleView().padding(100)) // SwiftUI preview
