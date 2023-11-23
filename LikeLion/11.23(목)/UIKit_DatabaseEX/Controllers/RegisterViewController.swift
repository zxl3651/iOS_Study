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
    var showmessage : String = ""
    
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
        
        if let context = manageObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: "LoginDatas", in: context) {
            
            
            // 만약 이메일이 존재한다면 => 회원가입 실패 및 기존 아이디로 로그인하라고 알람
            let request : NSFetchRequest<LoginDatas> = LoginDatas.fetchRequest()
            request.entity = entityDescription
            if let email = email.text {
                request.predicate = NSPredicate(format: "(email = %@)", email)
            }
            do {
                let results = try context.fetch(request as! NSFetchRequest<NSFetchRequestResult>)
                
                if results.count > 0 {
                    let match = results[0] as! NSManagedObject
                    
                    let email = match.value(forKey: "email") as? String
                    
                    if email == self.email.text {
                        showmessage = "기존에 회원가입 기록이 있습니다."
                        showAlert(showmessage)
                        
                    }
                } else { // 해당 이메일로 된 아이디 값이 없다는 뜻
                    let contact = LoginDatas(entity: entityDescription, insertInto: manageObjectContext)
                    
                    contact.email = email.text
                    contact.nickname = nickname.text
                    contact.password = password.text
                    
                    do {
                        try manageObjectContext?.save()
                        
                        email.text = ""
                        nickname.text = ""
                        password.text = ""
                        
                        self.navigationController?.popViewController(animated: true)
                        
                    } catch let error {
                        fatalError("error : \(error)")
                    }
                }
            } catch {
                fatalError("error : \(error)")
            }
        }
    }
    
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        alert.addAction(UIAlertAction(title: "취소", style: .destructive))
        
        present(alert, animated: true)
    }
    
    
}
