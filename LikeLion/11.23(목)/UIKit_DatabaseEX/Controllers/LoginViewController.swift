//
//  ViewController.swift
//  UIKit_DatabaseEX
//
//  Created by 이성현 on 2023/11/23.
//

import UIKit
import CoreData



class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var manageObjectContext : NSManagedObjectContext?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initCoreDatabase()
    }

    func initCoreDatabase() {
        let container = NSPersistentContainer(name: CoreDataKey.coreDataName.rawValue)
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("데이터베이스 초기화 실패")
            } else {
                print("데이터베이스 초기화 성공")
                self.manageObjectContext = container.viewContext
            }
        }
    }

    @IBAction func loginBtnClicked(_ sender: Any) {
        print("LoginViewController - loginBtnClicked() called")
        
        if let context = self.manageObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: CoreDataKey.entityName.rawValue, in: context) {
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
                    let password = match.value(forKey: "password") as? String
                    
                    if email == self.email.text && password == self.password.text {
                        print("로그인 성공")
                        // 로그인 성공 시 화면 이동
                        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
                        vc.manageObjectContext = self.manageObjectContext
                        vc.key = email ?? ""
                        self.navigationController?.pushViewController(vc, animated: true)
                        
//                        let vc = DetailViewController()
//                        vc.manageObjectContext = manageObjectContext
//                        self.navigationController?.pushViewController(vc, animated: true)
                        
                        
                    } else {
                        print("로그인 실패")
                    }
                } else { // 해당 이메일로 된 아이디 값이 없다는 뜻
                    print("로그인 정보가 없습니다.")
                }
            } catch {
                fatalError("error : \(error)")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? RegisterViewController {
            viewController.manageObjectContext = manageObjectContext
        }
    }
}

