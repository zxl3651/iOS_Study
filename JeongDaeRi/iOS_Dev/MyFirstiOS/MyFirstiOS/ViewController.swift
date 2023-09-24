//
//  ViewController.swift
//  MyFirstiOS
//
//  Created by 이성현 on 2023/09/07.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel : UILabel = {
        let label = UILabel()
        label.text = "헬로우 월드!!!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }


}

