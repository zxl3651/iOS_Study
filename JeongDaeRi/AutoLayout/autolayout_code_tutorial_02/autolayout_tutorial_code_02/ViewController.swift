//
//  ViewController.swift
//  autolayout_code_tutorial_02
//
//  Created by 이성현 on 2023/09/04.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var orangeView : UIView = {
       let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var upBtns : UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .white
        btn.setTitle("위로 올리기", for: .normal)
        //btn.setTitleColor(.black, for: .normal)
        btn.layer.cornerRadius = 10
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        btn.tintColor = .black
        btn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return btn
    }()
    
    lazy var downBtns : UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .white
        btn.setTitle("아래로 내리기", for: .normal)
        //btn.setTitleColor(.black, for: .normal)
        btn.layer.cornerRadius = 10
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        btn.tintColor = .black
        btn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return btn
    }()
    
    lazy var blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 10
        return view
    }()
    
    var blueViewTopConstraint : Constraint? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(orangeView)
        self.view.addSubview(blueView)
        self.view.addSubview(upBtns)
        self.view.addSubview(downBtns)
        
//        orangeView.translatesAutoresizingMaskIntoConstraints = false
//        whiteBtns.translatesAutoresizingMaskIntoConstraints = false
//        blueView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            orangeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
//            orangeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
//            orangeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
//            orangeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
//        ])
        
        orangeView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
        
        upBtns.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
        }
        
        upBtns.addTarget(self, action: #selector(upBlueView), for: .touchUpInside)
        
        blueView.snp.makeConstraints { make in
            make.width.equalTo(upBtns.snp.width).dividedBy(1.5)
            make.height.equalTo(upBtns.snp.height)
            self.blueViewTopConstraint = make.bottom.equalTo(upBtns.snp.bottom).offset(300).constraint
            make.centerX.equalToSuperview()
        }
        
        downBtns.snp.makeConstraints { make in
            make.width.equalTo(upBtns.snp.width)
            make.height.equalTo(upBtns.snp.height)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-10)
        }
        
        downBtns.addTarget(self, action: #selector(downBlueView), for: .touchUpInside)
        
        
        
    }
    var offset = 300
    
    @objc fileprivate func upBlueView(){
        offset -= 40
        self.blueViewTopConstraint?.update(offset: offset)
        print("upBlueView() - called, offset : \(offset)")
        
        UIViewPropertyAnimator(duration: 0.5, curve: .linear, animations: {
            self.view.layoutIfNeeded() // 값이 변경되면 적용시켜라라는 뜻(layoutIfNeeded())
        }).startAnimation()
    }
    
    @objc fileprivate func downBlueView(){
        offset += 40
        self.blueViewTopConstraint?.update(offset: offset)
        print("downBlueView() - called, offset : \(offset)")
        
        UIViewPropertyAnimator(duration: 0.5, curve: .linear, animations: {
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
            .edgesIgnoringSafeArea(.all) //preview에서 꽉 채워보이게 하기
            .previewDisplayName("Preview")
    }
}

#endif
