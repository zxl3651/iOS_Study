//
//  ViewController.swift
//  autolayout_stackview_tutorial
//
//  Created by 이성현 on 2023/08/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet var phoneNumberBtns: [CircleButton]!
    
    @IBOutlet weak var phoneCallBtn: CircleButton!
    
    var phoneNumberString = ""{
        didSet{
            self.phoneNumberLabel.textColor = .black
            self.phoneNumberLabel.text = self.phoneNumberString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for btnItem in phoneNumberBtns{
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(_:)), for: .touchUpInside)
        }
        
        phoneCallBtn.addTarget(self, action: #selector(onPhoneCallBtnClicked(_:)), for: .touchUpInside)
    }
    
    // 버튼을 클릭했을때, 값을 inputString으로 받고 그걸 phoneNumberString에 append 해준다.
    @objc fileprivate func onNumberBtnClicked(_ sender: UIButton){
        guard let inputString = sender.titleLabel?.text else { return }
        phoneNumberString.append(inputString)
    }
    
    @objc fileprivate func onPhoneCallBtnClicked(_ sender: UIButton){
        phoneNumberString.removeAll()
    }
    
}

