//
//  MainTabBarController.swift
//  TabBarController_No_storyboard_10
//
//  Created by 이성현 on 2023/10/09.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MainTabBarController - viewDidLoad() called")
        
        tabBar.backgroundColor = .white
        
        // "#colorLiteral(" -> 사용법
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "첫번째", bgColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번째", bgColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
        let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번째", bgColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
        let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "다섯번째", bgColor: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                                                  
        // 위에서 정의한 navigationController들을 하나씩 넣어주는 코드
        self.viewControllers = [firstNC, secondNC, thirdNC, forthNC, fifthNC]
        
        // 아이템 설정
        let firstTabBarItem = UITabBarItem(title: "첫번째", image: UIImage(systemName: "airplayaudio"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "두번째", image: UIImage(systemName: "airplayvideo"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "세번째", image: UIImage(systemName: "arrow.clockwise.icloud.fill"), tag: 2)
        let forthTabBarItem = UITabBarItem(title: "네번째", image: UIImage(systemName: "arrow.down.left.video.fill"), tag: 3)
        let fifthTabBarItem = UITabBarItem(title: "다섯번째", image: UIImage(systemName: "safari.fill"), tag: 4)
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        forthNC.tabBarItem = forthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
        
    }
    
    
}
