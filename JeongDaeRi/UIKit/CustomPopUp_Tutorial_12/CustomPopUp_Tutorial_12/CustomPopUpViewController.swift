//
//  CustomPopUpViewController.swift
//  CustomPopUp_Tutorial_12
//
//  Created by 이성현 on 2023/10/10.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    
    
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var subscribeBtn: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    var subscribeBtnCompletionClosure : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        
        contentView.layer.cornerRadius = 30
        subscribeBtn.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onBgBtnClicked() called")
        self.dismiss(animated: true) // dismiss 는 현재 창을 닫아주는 효과!
    }
    
    @IBAction func onSubscribeBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onSubscribeBtnClicked() called")
        
        self.dismiss(animated: true)
        
        // 컴플레션 블럭 호출
        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
            // 메인에 알린다.
            subscribeBtnCompletionClosure()
        }
    }
    
    
}
