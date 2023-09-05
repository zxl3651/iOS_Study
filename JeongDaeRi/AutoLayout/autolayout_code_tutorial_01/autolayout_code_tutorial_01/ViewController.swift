//
//  ViewController.swift
//  autolayout_code_tutorial_01
//
//  Created by 이성현 on 2023/09/03.
//

import UIKit

class ViewController: UIViewController {

    //클로저로 뷰를 설정
    var mySecondView : UIView = {
       let view = UIView()
        view.backgroundColor = .systemGreen
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true // cornerRadius를 잘 적용할려면 이걸 설정해줘야한다.
        return view
    }()
    
    // 새로 파일(클래스)를 만들어서 뷰 해보기
    var myThirdView : MyCircleView = {
        let circleView = MyCircleView()
        circleView.backgroundColor = .systemOrange
        circleView.translatesAutoresizingMaskIntoConstraints = false
        return circleView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myFirstView = UIView()
        myFirstView.translatesAutoresizingMaskIntoConstraints = false //이건 필수로 해야함(오토레이아웃 설정할때는)
        myFirstView.backgroundColor = .systemRed
        self.view.addSubview(myFirstView)
        
        // x축 , y축 위치 , 즉 가로 세로를 넣어줘야 함
        myFirstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myFirstView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
        
        // 첫번째 뷰의 크기 제공
        myFirstView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myFirstView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        myFirstView.layer.cornerRadius = 30
        
        self.view.addSubview(mySecondView)
        // 두번째 뷰의 크기 제공
        mySecondView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mySecondView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        mySecondView.leadingAnchor.constraint(equalTo: myFirstView.leadingAnchor, constant: 10).isActive = true
        mySecondView.topAnchor.constraint(equalTo: myFirstView.bottomAnchor, constant: 20).isActive = true
        
        let myTestView = UIView()
        myTestView.translatesAutoresizingMaskIntoConstraints = false
        myTestView.backgroundColor = .systemBlue
        
        // test 뷰 해보기
        self.view.addSubview(myTestView)
        myTestView.layer.cornerRadius = 25
        // NSlayout 배열을 집어넣어서 isActive = true 설정을 안해줘도 되게 만들기
        NSLayoutConstraint.activate([
            myTestView.leadingAnchor.constraint(equalTo: myFirstView.leadingAnchor, constant: 0),
            myTestView.bottomAnchor.constraint(equalTo: myFirstView.topAnchor, constant: -20),
            myTestView.widthAnchor.constraint(equalToConstant: 50),
            myTestView.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        // 세번째 뷰
        self.view.addSubview(myThirdView)
        myThirdView.widthAnchor.constraint(equalTo: mySecondView.widthAnchor, multiplier: 1.5).isActive = true // secondview의 가로의 1.5배 만큼 width를 하겠다.
        myThirdView.heightAnchor.constraint(equalTo: mySecondView.heightAnchor, multiplier: 1.5).isActive = true
        myThirdView.topAnchor.constraint(equalTo: mySecondView.bottomAnchor, constant: 50).isActive = true
        myThirdView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }


}


#if DEBUG
import SwiftUI
struct ViewControllerRepresentable : UIViewControllerRepresentable{
    //update
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    @available(iOS 13.0, *)
    //makeui : 뷰를 다시 그리기 때문에 있어야함(아래 함수를 통해 viewcontroller를 반환함[반환하는 viewcontroller는 위에서 만든 것])
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }
    
}

struct ViewController_Previews : PreviewProvider{
    static var previews: some View{
        ViewControllerRepresentable()
            .previewDisplayName("아이폰 14")
    }
}

#endif

