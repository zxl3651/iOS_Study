//
//  MyCollectionVC.swift
//  dynamic_table_view_tutorial
//
//  Created by 이성현 on 2023/09/04.
//

import Foundation
import UIKit

class MyCollectionVC: UIViewController {
    
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    fileprivate let systemImageNameArray = [
            "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "ant", "hare", "car", "airplane", "heart", "bandage", "waveform.path.ecg", "staroflife", "bed.double.fill", "signature", "bag", "cart", "creditcard", "clock", "alarm", "stopwatch.fill", "timer"
        ]
        
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MyCollectionVC - viewDidLoad()")
        
        
        // 콜렉션 뷰에 대한 설정
        myCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight] //width랑 height를 유동적으로 설정한다는 뜻
        myCollectionView.dataSource = self
        myCollectionView.delegate = self // 여기있는 self가 아래 extension으로 들어가게 되는것
        
        // 사용할 콜렉션뷰 셀을 등록(nib파일을 이용해서 콜렉션 뷰 만들기)
        // 스토리보드에서 셀 UI를 변경하는 게 아닌 Nib 파일을 만들어서 UI를 변경해 가져오는 방식이 하단의 방식
        //-------------------------------------------------------------------------------------------
        // 닙 파일을 가져온다.
        let myCustomCollectionViewCellNib = UINib(nibName: "MyCustomCollectionViewCell", bundle: nil)
        //let myCustomCollectionViewCellNib = UINib(nibName: String(describing: MyCustomCollectionViewCell.self), bundle: nil)
        // 위 두개의 코드는 같은 말이다.(String(describing:)) 참고.
        // description -> MyTableViewCell 이라는 Nib 파일을 만들어서 UI를 변경했고, 그 Nib 파일을 myTableViewCellNib에 저장
        
        // 가져온 닙 파일로 콜렉션뷰에 셀로 등록한다.
        self.myCollectionView.register(myCustomCollectionViewCellNib, forCellWithReuseIdentifier: "MyCustomCollectionViewCell")
        //-------------------------------------------------------------------------------------------
        
        // 콜렉션뷰의 콜렉션뷰 레이아웃을 설정한다.
        self.myCollectionView.collectionViewLayout = createCompositionalLayoutFirst()
    }
    
    var number = 0
    @IBAction func onCollectionViewTypeChanged(_ sender: UISegmentedControl) {
        print("MyCollectionVC / onCollectionViewTypeChanged() called / sender.selectedSegmentIndex: \(sender.selectedSegmentIndex)")
        
        switch sender.selectedSegmentIndex{
        case 0:
            // 테이블뷰 형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutFirst()
        case 1:
            // 2 x 2 그리드 형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutSecond()
        case 2:
            // 3 x 3 그리드 형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutThird()
        default:
            break
        }
        
    }
    
}

// viewDidLoad()에 createCompositionalLayout을 구현하기에는 너무 복잡해지니까 extension을 이용해 정리하는 방법
//MARK: - 콜렉션뷰 콤포지셔널 레이아웃 관련
extension MyCollectionVC {
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutFirst() -> UICollectionViewLayout {
        print("createCompositionalLayoutFirst() called")
        // 콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            // 만들게 되면 튜플 (키: 값, 키: 값)의 묶음으로 들어옴 반환 하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            //-------------------------------------------------------------------------------------각 코드에서 다른 부분
            // 아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction은 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            //-------------------------------------------------------------------------------------각 코드에서 다른 부분
            
            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            //-------------------------------------------------------------------------------------각 코드에서 다른 부분
            // 그룹 높이
            let groupheight = NSCollectionLayoutDimension.fractionalWidth(1/3)
            //-------------------------------------------------------------------------------------각 코드에서 다른 부분
            
            // 그룹 사이즈(아이템을 감싸고 있는 게 그룹을 의미) , 그룹의 width는 1.0이므로 100퍼센트를 의미한다.
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupheight)
            
            // 그룹 사이즈로 그룹 만들기
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            
            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
            // section을 스크롤 할 수 있게 설정할 수 있다.
//            section.orthogonalScrollingBehavior = .continuous
            
            // 섹션 간의 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
        }
        return layout
    }
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutSecond() -> UICollectionViewLayout {
        print("createCompositionalLayoutSecond() called")
        // 콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            // 만들게 되면 튜플 (키: 값, 키: 값)의 묶음으로 들어옴 반환 하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // 아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction은 퍼센트(1/3으로 했으니, 하나의 그룹에 세개의 아이템이 들어간다고 생각하면 된다.)
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1.0))
            
            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            // 그룹 높이
            let groupheight = NSCollectionLayoutDimension.fractionalWidth(1/2)
            
            // 그룹 사이즈(아이템을 감싸고 있는 게 그룹을 의미) , 그룹의 width는 1.0이므로 100퍼센트를 의미한다.
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupheight)
            
            // 그룹 사이즈로 그룹 만들기
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item, item])
            
            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
            // section을 스크롤 할 수 있게 설정할 수 있다.
//            section.orthogonalScrollingBehavior = .continuous
            
            // 섹션 간의 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
        }
        return layout
    }
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutThird() -> UICollectionViewLayout {
        print("createCompositionalLayoutThird() called")
        // 콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            // 만들게 되면 튜플 (키: 값, 키: 값)의 묶음으로 들어옴 반환 하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // 아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction은 퍼센트(1/3으로 했으니, 하나의 그룹에 세개의 아이템이 들어간다고 생각하면 된다.)
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1.0))
            
            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            /// 그룹 높이
            let groupheight = NSCollectionLayoutDimension.fractionalWidth(1/3)
            
            // 그룹 사이즈(아이템을 감싸고 있는 게 그룹을 의미) , 그룹의 width는 1.0이므로 100퍼센트를 의미한다.
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupheight)
            
            // 그룹 사이즈로 그룹 만들기
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item, item, item])
            
            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
            // section을 스크롤 할 수 있게 설정할 수 있다.
//            section.orthogonalScrollingBehavior = .continuous
            
            // 섹션 간의 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
        }
        return layout
    }
}

// extension 하지않고 위에 MyCollectionVC : 에 추가해도 됨

// 데이터 소스 설정 - 데이터와 관련된 것들 (데이터를 몇개 보여줄건지, 섹션은 몇개인지, 각 섹션에 아이템은 몇개인지 등)
extension MyCollectionVC: UICollectionViewDataSource{
    
    // 각 섹션에 들어가는 아이템 갯수를 뜻함
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.systemImageNameArray.count
    }
    
    // 각 콜렉션 뷰 셀에 대한 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // swift에서는 class 명을 string으로 가져올 수 있다.(하단처럼)

        let cellId = String(describing: MyCollectionViewCell.self)
        print("cellId : \(cellId)") // cellId -> "MyCollectionViewCell"이 된다.

        
        // 하단 ---- 사이는 [스토리보드에서 셀 UI를 변경할 때 사용하는 과정]
// -----------------------------------------------------------------------------------------------
        // dequeueReusableCell 은 메모리를 재활용하기위해 사용하는 것, withReuseIdentifier에는 아까 설정한 id String 값을 넣어주면 된다
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MyCollectionViewCell // as!로 이 cell의 형태가 MyCollectionViewCell 이다라고 알려주는 것
// -----------------------------------------------------------------------------------------------
        // 하단은 Nib 파일을 이용해 셀 UI를 변경했을때 사용하는 과정
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MyCustomCollectionViewCell.self), for: indexPath) as! MyCustomCollectionViewCell
        
        
//        // 셀 꾸미기
//        // cell이 있고 그다음에 contentView가 있는데 거기에 접근한 것을 의미(Main에서 좌측에 구조를 보면 확인 가능)
//        cell.contentView.backgroundColor = .brown
//        cell.contentView.layer.cornerRadius = 8
//        cell.contentView.layer.borderWidth = 1
        // -> 1. 상단처럼 여기서 구현해도 되지만 MyCollectionViewCell에서 직접 구현해도 됌.
        
        // 데이터에 따른 셀 UI 변경하는 부분
        // 이미지에 대한 설정
//        cell.profileImg.image = UIImage(systemName: self.systemImageNameArray[indexPath.item])
//        // 라벨 설정
//        cell.profileLabel.text = self.systemImageNameArray[indexPath.item] //
        // -> 1. 상단처럼 여기서 구현해도 되지만 MyCollectionViewCell에서 직접 구현해도 됌(앞에 숫자 순서대로 이해하면 된다.)
        
        cell.imageName = self.systemImageNameArray[indexPath.item] // 3. 이렇게 하면 똑같은 기능을 수행할 수 있다.
        
        
        return cell
    }
    
    
}


// 콜렉션뷰 델리겟 - 액션과 관련된 것들
extension MyCollectionVC: UICollectionViewDelegate{
    
}

