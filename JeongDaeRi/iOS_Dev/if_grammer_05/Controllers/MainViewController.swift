//
//  MainViewController.swift
//  if_grammer_05
//
//  Created by 이성현 on 2023/09/29.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // 제목
    var titleLabel : UILabel = {
       let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        return label
    }()
    
    // 버튼
    let changeBtn : UIButton = {
        let btn = UIButton(type: .system) //type을 .system으로 하게되면 효과가 적용된다!
        btn.setTitle("배경색바꾸기", for: .normal) //가만히 있을때, 즉 normal인 상태를 의미한다.
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 5
        btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
        return btn
    }()
    
    var isBgOrange : Bool? // 옵셔널로 값을 넣지 않고 정의한다.
    
    // 뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBgOrange = true
        
        // color literal이 xcode 13 버전부터 지원하지 않는다. 그래서 사용하기 위해서는 " #colorLiteral( " 를 치면 사용할 수 있다!
        view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(changeBtn)
        
        changeBtn.translatesAutoresizingMaskIntoConstraints = false
        changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    @objc fileprivate func changeBg(){
        print("MainViewController - changeBg() called")
        
        if isBgOrange == true {
            //
            view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            isBgOrange?.toggle()
        } else {
            //
            view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            isBgOrange?.toggle()
        }
        
        
    }
    
}
