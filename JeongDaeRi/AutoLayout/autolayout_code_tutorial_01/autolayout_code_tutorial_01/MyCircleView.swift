//
//  MyCircleView.swift
//  autolayout_code_tutorial_01
//
//  Created by 이성현 on 2023/09/03.
//

import Foundation
import UIKit

class MyCircleView : UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        print("My Circle View - layoutSubviews() called")
        self.layer.cornerRadius = self.frame.height / 2
    }
}
