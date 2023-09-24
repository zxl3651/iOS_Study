//
//  ViewController.swift
//  NiceApp_02
//
//  Created by 이성현 on 2023/09/07.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "메인화면"
        label.textColor = .red
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        
        return label
    }()
    
    
    let animationView: LottieAnimationView = {
        let animView = LottieAnimationView(name: "animation_lm8ydi3h")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        // contentMode = 이미지를 확대할껀지 축소할껀지 설정
        animView.contentMode = .scaleAspectFill // 크기에 맞게 이미지를 확대하겠다는 설정.
        return animView
    }()

    override func viewDidLoad() {
        super.viewDidLoad() // 뷰가 생성되었을 때
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        
        
        // 애니메이션 실행
        // 클로저 내부에서는 self.를 붙여주어야 한다.
        animationView.play{ (finish) in
            print("애니메이션이 끝났다.")
            
            self.view.backgroundColor = .white
            
            // view 로부터 animationView를 제거하는 코드
            self.animationView.removeFromSuperview()
            
            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                self.titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
            ])

        }
        
        
        
    }


}

