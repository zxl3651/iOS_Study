//
//  ViewController.swift
//  UIKit_Demo01
//
//  Created by 이성현 on 2023/11/13.
//

import UIKit

class ViewController: UIViewController {

    lazy var A_label : UILabel = {
       let label = UILabel()
        label.text = "Hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var B_label : UILabel = {
       let label = UILabel()
        label.text = "World"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 예제 1번
        self.view.addSubview(A_label)
        self.view.addSubview(B_label)
        
        A_label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        A_label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        B_label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        B_label.leadingAnchor.constraint(equalTo: A_label.trailingAnchor, constant: 20).isActive = true
        
    }


}

#if DEBUG
import SwiftUI

struct ViewControllerRepresentable : UIViewControllerRepresentable{
    //update
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    @available(iOS 13.0, *)
    //makeui : 뷰를 다시 그리기 때문에 있어야함(아래 함수를 통해 viewcontroller를 반환함[반환하는 viewcontroller는 위에서 만든 것])
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }
    
}

struct ViewController_Previews : PreviewProvider{
    static var previews: some View{
        ViewControllerRepresentable()
            .ignoresSafeArea()
            .previewDisplayName("아이폰 14")
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

#endif
