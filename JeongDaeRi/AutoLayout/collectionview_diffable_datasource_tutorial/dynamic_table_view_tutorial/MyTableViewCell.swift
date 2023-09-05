//
//  MyTableViewCell.swift
//  dynamic_table_view_tutorial
//
//  Created by 이성현 on 2023/08/25.
//

import Foundation
import UIKit

class MytableViewCell: UITableViewCell{
    
    @IBOutlet weak var userProfileImg: UIImageView!
    
    @IBOutlet weak var userContentLabel: UILabel!
    
    
    // 셀이 렌더링(그릴때) 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MytableViewCell - awakeFromNib() called")
        
        // 이미지 모서리를 둥글게 만드는 코드
        userProfileImg.layer.cornerRadius = userProfileImg.frame.height / 2
    }
}
