//
//  ViewController.swift
//  autolayout_snapkit_tutorial
//
//  Created by 이성현 on 2023/09/03.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var yellowBox : UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var greenBox : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var redBox : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var blueBox : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    // 매개변수가 있는 클로저
    lazy var myButton = { (color: UIColor) -> UIButton in
        let btn = UIButton(type: .system) // .system 타입으로 하면 버튼 클릭 효과를 줄수있다.
        btn.backgroundColor = color
        btn.setTitle("내 버튼", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 16
        return btn
    }
    
    var greenBoxTopNSLayoutConstraint : NSLayoutConstraint? = nil // 기존 greenBox 코드
    var greenBoxTopConstraint : Constraint? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(yellowBox)
        self.view.addSubview(greenBox)
        self.view.addSubview(redBox)
        self.view.addSubview(blueBox)
        
        let myDarkGrayBtn = myButton(.darkGray)
        self.view.addSubview(myDarkGrayBtn)
        
        // 기존 코드(오토 레이아웃 설정을 하기위해 필수로 하던 것)
//        yellowBox.translatesAutoresizingMaskIntoConstraints = false
//        greenBox.translatesAutoresizingMaskIntoConstraints = false
//        redBox.translatesAutoresizingMaskIntoConstraints = false
//        blueBox.translatesAutoresizingMaskIntoConstraints = false
        
        // 기존 오토레이아웃
//        yellowBox.topAnchor.constraint(equalTo: self.view.topAnchor, constant: -20).isActive = true
//        yellowBox.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 20).isActive = true
//        yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
//        yellowBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        
        // snapkit 사용
        yellowBox.snp.makeConstraints { make in // make는 yellowBox를 의미한다.
//            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) // make의 Superview는 self.view와 동일하므로 같은 말이 된다.
        }
        
        // yellowBox 기존 코드
//        yellowBox.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            yellowBox.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
//            yellowBox.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
//            yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
//            yellowBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
//        ])
        
        
        redBox.snp.makeConstraints { make in
            make.width.height.equalTo(100) // width, height를 100으로 설정한 것
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview() // superview로 설정하면 바로 할수있다. centerX 가 아닌 center로 설정시 X,Y 둘다 설정할 필요 없어진다.

        }
        
        // redBox 기존 코드
//        redBox.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            redBox.widthAnchor.constraint(equalToConstant: 100),
//            redBox.heightAnchor.constraint(equalToConstant: 100),
//            redBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
//            redBox.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
//        ])
        
        blueBox.snp.makeConstraints { make in
            //make.width.equalTo(redBox.snp.width).dividedBy(1.5) 줄이기
            make.width.equalTo(redBox.snp.width).multipliedBy(2) //키우기
            make.height.equalTo(redBox.snp.height)
            make.top.equalTo(redBox.snp.bottom).offset(20) //offset을 통해 띄울 수 있다.
            make.centerX.equalToSuperview()
        }
        
        // blueBox 기존 코드
//        blueBox.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            blueBox.widthAnchor.constraint(equalTo: self.redBox.widthAnchor,multiplier: 2),
//            blueBox.heightAnchor.constraint(equalTo: self.redBox.heightAnchor),
//            blueBox.topAnchor.constraint(equalTo: self.redBox.bottomAnchor, constant: 20),
//            blueBox.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
//        ])
     
        myDarkGrayBtn.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(100)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        myDarkGrayBtn.addTarget(self, action: #selector(moveGreenBoxDown), for: .touchUpInside)
        
        // myDarkGrayBtn 기존 코드
//        myDarkGrayBtn.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            myDarkGrayBtn.widthAnchor.constraint(equalToConstant: 200),
//            myDarkGrayBtn.heightAnchor.constraint(equalToConstant: 100),
//            myDarkGrayBtn.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
//            myDarkGrayBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
//        ])
        
        greenBox.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            self.greenBoxTopConstraint = make.top.equalTo(blueBox.snp.bottom).offset(20).constraint
        }
        
        // greenBox 기존코드
//
//        greenBox.translatesAutoresizingMaskIntoConstraints = false
//
//        greenBoxTopNSLayoutConstraint = greenBox.topAnchor.constraint(equalTo: self.blueBox.bottomAnchor, constant: 20)
//
//        NSLayoutConstraint.activate([
//            greenBox.widthAnchor.constraint(equalToConstant: 100),
//            greenBox.heightAnchor.constraint(equalToConstant: 100),
//            greenBox.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//        ])
//
//        greenBoxTopNSLayoutConstraint?.isActive = true
    }

    var offset = 0

    @objc fileprivate func moveGreenBoxDown(){
        offset += 40
        print("ViewController - moveGreenBoxDown() called / offset : \(offset)")
        
        self.greenBoxTopConstraint?.update(offset: offset)
        
        //self.greenBoxTopNSLayoutConstraint?.constant = CGFloat(offset)
        
        // 애니메이션 추가
        UIViewPropertyAnimator(duration: 0.2, curve: .easeOut, animations: {
            self.view.layoutIfNeeded()
        }).startAnimation()
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
            .ignoresSafeArea()
            .previewDisplayName("아이폰 14")
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

#endif

