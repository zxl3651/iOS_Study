//
//  ViewController.swift
//  TabBarController_No_storyboard_10
//
//  Created by 이성현 on 2023/10/09.
//

import UIKit

class MyViewController: UIViewController {

    convenience init(title: String, bgColor: UIColor) {
        self.init()
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

