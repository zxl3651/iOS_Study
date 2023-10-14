//
//  RegisterViewController.swift
//  NavigationViewController_tutorial_03
//
//  Created by 이성현 on 2023/09/07.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onLoginbtnClicked(_ sender: UIButton) {
        print("RegisterViewController / onLoginbtnClicked() - called, 로그인 버튼 클릭!")
        
        // 네비게이션 뷰 컨트롤러를 팝 한다.
        self.navigationController?.popViewController(animated: true)
    }
}
