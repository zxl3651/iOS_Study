//
//  ViewController.swift
//  KakaoLoginAPI
//
//  Created by 이성현 on 2023/12/04.
//

import UIKit
import KakaoSDKUser
import KakaoSDKAuth

class ViewController: UIViewController {
    
    var oauthToken : OAuthToken?
    var kakaoname : String?
    var kakaoimg : URL?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kakaoLoginBtnClicked(_ sender: Any) {
        UserApi.shared.loginWithKakaoAccount { (oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoTalk() success.")
                
                self.oauthToken = oauthToken
                print(oauthToken!)
                
                guard let vc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }
    }
    
}



