//
//  RegisterViewController.swift
//  UIKit_DatabaseEX
//
//  Created by 이성현 on 2023/11/23.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var manageObjectContext : NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func onLoginBtnClicked(_ sender: Any) {
        print("RegisterViewController - onLoginBtnClicked () 실행")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func registerBtnClicked(_ sender: Any) {
        print("RegisterViewController - registerBtnClicked () 실행")
    }
}
