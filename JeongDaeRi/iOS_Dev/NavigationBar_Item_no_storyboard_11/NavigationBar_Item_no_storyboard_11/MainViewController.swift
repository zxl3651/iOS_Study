//
//  ViewController.swift
//  NavigationBar_Item_no_storyboard_11
//
//  Created by 이성현 on 2023/10/10.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "홈"
        self.view.backgroundColor = .yellow
        
        // 네비게이션 아이템 추가
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(goToProfileVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: #selector(goToMessageVC))
        
        
    }

    
    // 프로필 VC로 가는 objc 함수
    @objc fileprivate func goToProfileVC(){
        print("MainViewController - goToProfileVC() called")
        
        let profileVC = ProfileViewController()
        self.navigationController?.pushViewController(profileVC, animated: true)
        
        
    }
    
    // 메세지 VC로 가는 objc 함수
    @objc fileprivate func goToMessageVC(){
        print("MainViewController - goToMessageVC() called")
        
        let messageVC = MessageViewController()
        self.navigationController?.pushViewController(messageVC, animated: true)
    }

}

