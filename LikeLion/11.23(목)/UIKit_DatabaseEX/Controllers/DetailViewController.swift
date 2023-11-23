//
//  DetailViewController.swift
//  UIKit_DatabaseEX
//
//  Created by 이성현 on 2023/11/23.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var nickname: UILabel!
    
    var manageObjectContext : NSManagedObjectContext?
    var key : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingData()

        // Do any additional setup after loading the view.
    }
    
    func loadingData() {
        if let context = self.manageObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: CoreDataKey.entityName.rawValue, in: context) {
            let request : NSFetchRequest<LoginDatas> = LoginDatas.fetchRequest()
            request.entity = entityDescription
            
            request.predicate = NSPredicate(format: "(email = %@)", key)
            
            do {
                let results = try context.fetch(request as! NSFetchRequest<NSFetchRequestResult>)
                
                if results.count > 0 {
                    let match = results[0] as! NSManagedObject
                    
                    email.text = match.value(forKey: "email") as? String
                    nickname.text = match.value(forKey: "nickname") as? String
                }
            } catch {
                fatalError("error : \(error)")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func logoutBtnClicked(_ sender: Any) {
        print("DetailViewController - logoutBtnClicked() 실행")
        self.navigationController?.popViewController(animated: true)
    }
}
