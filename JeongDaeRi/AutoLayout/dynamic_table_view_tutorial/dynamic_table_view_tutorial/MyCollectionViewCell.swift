//
//  MyCollectionViewCell.swift
//  dynamic_table_view_tutorial
//
//  Created by 이성현 on 2023/09/04.
//

import Foundation
import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    
    var imageName : String = ""{
        didSet{
            print("MyCollectionViewCell / imageName - didSet() : \(imageName)")
            //(셀의 UI 설정)
            // image 설정
            self.profileImg.image = UIImage(systemName: imageName)
            // 라벨 설정
            self.profileLabel.text = imageName
            // 2. 상단처럼 해놓으면 imageName에 대해서 MyCollectionView에서 넣기만 해줘도 알아서 image와 text가 정해지는 구조.
        }
    }
    
    // 2. 실행하게 되면 렌더링이 될 때 awakeFromNib() 이 호출이 된다. -> 각각의 셀에 UI설정이 된다는 뜻
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCollectionViewCell - awakeFromNib() called")
        self.contentView.backgroundColor = .cyan
        self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth = 1
    }
    
}
