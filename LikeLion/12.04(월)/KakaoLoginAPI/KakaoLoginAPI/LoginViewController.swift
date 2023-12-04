//
//  LoginViewController.swift
//  KakaoLoginAPI
//
//  Created by 이성현 on 2023/12/04.
//

import UIKit
import KakaoSDKUser
import KakaoSDKAuth
import Kingfisher

class LoginViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        fetchUserData()
    }
    
    @IBAction func logoutBtnClicked(_ sender: Any) {
        UserApi.shared.logout { error in
            if let error = error {
                print(error)
            } else {
                print("logoutBtnClicked() success.")
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    func fetchUserData() {
        UserApi.shared.me { (user, error) in
            if let error = error {
                print(error)
            } else {
                print("me() success.")
                if let name = user?.kakaoAccount?.profile?.nickname{
                    self.myName.text = name
                }
                if let url = user?.kakaoAccount?.profile?.profileImageUrl {
                    self.myImage.kf.setImage(with: url)
                }
            }
        }
    }
    
    @IBAction func fetchBtnClicked(_ sender: Any) {
        UserApi.shared.me { (user, error) in
            if let error = error {
                print(error)
            } else {
                print("me() success.")
                if let name = user?.kakaoAccount?.profile?.nickname{
                    self.myName.text = name
                }
                if let url = user?.kakaoAccount?.profile?.profileImageUrl {
                    self.myImage.kf.setImage(with: url)
                }
            }
        }
    }
}
