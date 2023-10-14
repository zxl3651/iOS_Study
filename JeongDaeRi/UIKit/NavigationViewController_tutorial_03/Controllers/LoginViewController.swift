//
//  ViewController.swift
//  NavigationViewController_tutorial_03
//
//  Created by 이성현 on 2023/09/07.
//

import UIKit

class LoginViewControllers: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네이게이션 바 부분을 hidden 처리
        // self는 LoginViewController를 가리킨다.
        self.navigationController?.isNavigationBarHidden = true
        
    }


}

