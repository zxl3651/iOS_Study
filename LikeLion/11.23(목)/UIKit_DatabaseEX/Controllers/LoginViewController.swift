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
        let container = NSPersistentContainer(name: "UIKit_DatabaseEX")
        container.loadPersistentStores { description, error in
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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? RegisterViewController {
            viewController.manageObjectContext = manageObjectContext
        }
    }
}

