//
//  ViewController.swift
//  CustomPopUp_Tutorial_12
//
//  Created by 이성현 on 2023/10/10.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var createPopUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        
        print("ViewController - onCreatePopUpBtnClicked() called")
        
        
        // 스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        
        // 스토리보드를 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "AlertPopUpVC") as! CustomPopUpViewController
        // 팝업효과 설정하기! (설정안하면 아래에서 위로 올라오는 기본 설정값으로 설정됌)
        customPopUpVC.modalPresentationStyle = .overCurrentContext // 뷰컨트롤러가 보여지는 스타일을 의미한다.
        customPopUpVC.modalTransitionStyle = .crossDissolve // 뷰컨트롤러가 사라지는 스타일을 의미한다.
        
        customPopUpVC.subscribeBtnCompletionClosure = {
            print("컴플레션 블럭이 호출되었다. ")
            let myChannelUrl = URL(string: "https://www.youtube.com/@pzzzang3")
            self.myWebView.load(URLRequest(url: myChannelUrl!))
        }
        
        self.present(customPopUpVC, animated: true, completion: nil) // alertPopUpVC를 보여주겠다, 애니메이션은 있이, 끝나고 나서는 nil로 아무것도 안하겠다라는 의미
        
        
    }
    
}

