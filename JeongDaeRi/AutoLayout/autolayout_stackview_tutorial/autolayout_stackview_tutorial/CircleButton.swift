//
//  CircleButton.swift
//  autolayout_stackview_tutorial
//
//  Created by 이성현 on 2023/09/01.
//

import Foundation
import UIKit

// 인터페이스 빌더에서 디자인으로 확인 가능하게끔 하는 IBDesignable
@IBDesignable
class CircleButton: UIButton{
    // IBInspectable 인스펙터 패널에서 사용될 수 있도록 설정
    @IBInspectable var cornerRadius : CGFloat = 0{
        didSet{
            // layer는 상속받은 UIButton이 가지고있는 layer에 접근한 것이다.
            layer.cornerRadius = cornerRadius // 설정된 값으로 layer의 cornerRadius를 바꿔주는 것
            layer.masksToBounds = cornerRadius > 0
            // 만약 0보다 크게 설정됐다면 masksToBounds로 UI에서 바로 확인할 수 있다.
        }
    }
}
