//
//  ViewController.swift
//  UIKit_Demo01
//
//  Created by 이성현 on 2023/11/13.
//

import UIKit

class ViewController: UIViewController {

//    lazy var A_label : UILabel = {
//       let label = UILabel()
//        label.text = "AutoLayout..."
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
//    lazy var A_Image : UIImageView = {
//        let img = UIImageView()
//        img.image = UIImage(systemName: "circle")
//        img.contentMode = .scaleAspectFit
//        img.translatesAutoresizingMaskIntoConstraints = false
//        return img
//    }()
    
//    lazy var B_label : UILabel = {
//       let label = UILabel()
//        label.text = "World"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    lazy var myButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor.blue
        btn.setTitle("Tab Me", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 예제 1번
//        self.view.addSubview(A_label)
//        self.view.addSubview(B_label)
//        
//        A_label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//        A_label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
//        B_label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//        B_label.leadingAnchor.constraint(equalTo: A_label.trailingAnchor, constant: 20).isActive = true
        
        // 예제 2번
//        self.view.addSubview(A_label)
//        self.view.addSubview(B_label)
//        
//        A_label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        A_label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
//        B_label.topAnchor.constraint(equalTo: A_label.topAnchor).isActive = true
//        B_label.leadingAnchor.constraint(equalTo: A_label.trailingAnchor, constant: 20).isActive = true
        
        // 예제 3번
//        self.view.addSubview(A_Image)
//        self.view.addSubview(A_label)
//        
//        A_Image.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        A_Image.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        A_Image.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        A_Image.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 50).isActive = true
//        
//        A_label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        A_label.topAnchor.constraint(equalTo: A_Image.bottomAnchor, constant: 10).isActive = true
        
        // 예제 4번
        self.view.addSubview(myButton)
        
        myButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50).isActive = true
        myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        
        
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
