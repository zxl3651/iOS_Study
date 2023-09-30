//
//  ViewController.swift
//  CompletionBlock-Tutorial_07
//
//  Created by 이성현 on 2023/09/30.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ViewController - viewDidLoad() called")
        
        KRProgressHUD.show()
        
        sayHi(completion: { result in
            print("컴플레션 블락으로 넘겨받았음 : \(result)")
            
            KRProgressHUD.showSuccess()
            
            self.mainTitle.text = result
        })
        
    }


    fileprivate func sayHi(completion: @escaping(String) -> ()){ //escaping 뒤에 String은 넘겨지는 데이터를 의미
        
        print("ViewControleroller - sayHi() 호출됨")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
          // n초 후 실행될 부분
            completion("비동기 처리 완료!")
        }
        
        
    }
}

