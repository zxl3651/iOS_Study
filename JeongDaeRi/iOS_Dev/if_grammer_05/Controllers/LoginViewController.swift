//
//  ViewController.swift
//  if_grammer_05
//
//  Created by 이성현 on 2023/09/29.
//

import UIKit

class LoginViewControllers: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단 네이게이션 바 부분을 hidden 처리
        // self는 LoginViewController를 가리킨다.
        self.navigationController?.isNavigationBarHidden = true
        
        
        loginBtn.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
        
        
    }
    
    // 메인화면으로 이동
    @objc fileprivate func moveToMainViewController(){
        print("LoginViewControllers - moveToMainViewController() called")
        let mainViewController = MainViewController() // 객체를 인스턴스 하는 작업 즉, 메모리에 올리는 작업 => MainViewController()가 생성하는 작업 그리고 변수에 담은 것.
        self.navigationController?.pushViewController(mainViewController, animated: true) // self, 즉 LoginViewController를 감싸고 있는 navigationController를 가져와서 pushViewController를 통해 mainViewController를 push한다.
        
    }


}

