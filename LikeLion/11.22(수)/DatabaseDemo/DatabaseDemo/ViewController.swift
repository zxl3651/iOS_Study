//
//  ViewController.swift
//  DatabaseDemo
//
//  Created by 이성현 on 2023/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var findName: UILabel!
    @IBOutlet weak var findAddress: UILabel!
    @IBOutlet weak var findPhone: UILabel!
    
    
    var databasePath = ""
    var stores : [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initDB()
    }
    
    // 데이터베이스 초기화
    func initDB() {
        let filemgr = FileManager.default
        let dirPaths = filemgr.urls(for: .documentDirectory, in: .userDomainMask)
        
        databasePath = dirPaths[0].appendingPathExtension("contacts.db").path
        
        if  !filemgr.fileExists(atPath: databasePath) {
            
            let contactDB = FMDatabase(path: databasePath)
            if contactDB.open() {
                let sql_stmt = "create table if not exists contacts ( id integer primary key autoincrement, name text, address text, phone text)"
                if !contactDB.executeStatements(sql_stmt) {
                    print("Error: \(contactDB.lastErrorMessage())")
                }
                contactDB.close()
            } else {
                print("Error: \(contactDB.lastErrorMessage())")
            }
        } // end if
    }


    @IBAction func saveContact(_ sender: Any) {
        let contactDB = FMDatabase(path: databasePath)
            
            if contactDB.open() {
                let sql = "insert into contacts (name, address, phone) values ('\(name.text ?? "")', '\(address.text ?? "")', '\(phone.text ?? "")')"
                
                do {
                    try contactDB.executeUpdate(sql, values: nil)
                } catch {
                    status.text = "contact 추가 실패!!"
                }
                
                status.text = "Contact Added"
                name.text = ""
                address.text = ""
                phone.text = ""
                
                contactDB.close()
            } else {
                status.text = "DB 열기 오류 발생"
                print("Error: \(contactDB.lastErrorMessage())")
            }
    }
    
    @IBAction func findContact(_ sender: Any) {
        
        
        if name.text != ""{
            sqlStr("name", name)
            printModel(stores)
            
        }
        
        else if address.text != "" {
            sqlStr("address", address)
            printModel(stores)
        }
        
        else if phone.text != "" {
            sqlStr("phone", phone)
            printModel(stores)
        }
        stores = []
    }
    
    func sqlStr(_ str: String, _ find: UITextField) {
        findName.text = ""
        findAddress.text = ""
        findPhone.text = ""
        let contactDB = FMDatabase(path: databasePath)
        
        if contactDB.open(){
            
            let sql = "select name, address, phone from contacts where \(str) = '\(find.text ?? "")'"
            
            do {
                let results : FMResultSet? = try contactDB.executeQuery(sql, values: nil)
                while results?.next() == true {
                    let name = results?.string(forColumn: "name")
                    let address = results?.string(forColumn: "address")
                    let phone = results?.string(forColumn: "phone")
                    stores.append(Contact(name: name, address: address, phone: phone))
                    
                    status.text = "Record Found"
                }
            } catch {
                print("Error: \(contactDB.lastErrorMessage())")
            }
                
            contactDB.close()
        }
    }
    
    func printModel(_ items: [Contact]) {
        
        findName.text = "\(items[0].name ?? "")"
        for item in items {
            findAddress.text! += "\(item.address ?? "")\n"
            findPhone.text! += "\(item.phone ?? "")\n"
        }
    }
}

struct Contact {
    let name : String?
    let address : String?
    let phone : String?
}
