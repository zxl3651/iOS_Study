//
//  ViewController.swift
//  dynamic_table_view_tutorial
//
//  Created by 이성현 on 2023/08/25.
//

import UIKit

class MyTableVC: UIViewController {

    @IBOutlet weak var MyTableView: UITableView!
    
    var contentArray : [String] = ["안녕하세요", "하이","공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다","공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다","공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다공부하기힘들다"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // 스토리보드에서 셀 UI를 변경하는 게 아닌 Nib 파일을 만들어서 UI를 변경해 가져오는 방식이 하단의 방식
        //-------------------------------------------------------------------------------------------
        // 셀 리소스 파일 가져오기
        let myTableViewCellNib = UINib(nibName: "MyTableViewCell", bundle: nil)
        // description -> MyTableViewCell 이라는 Nib 파일을 만들어서 UI를 변경했고, 그 Nib 파일을 myTableViewCellNib에 저장
        
        // 셀에 가져온 리소스를 등록
        self.MyTableView.register(myTableViewCellNib, forCellReuseIdentifier: "myTableViewCell")
        //-------------------------------------------------------------------------------------------
        //
        self.MyTableView.rowHeight = UITableView.automaticDimension
        self.MyTableView.estimatedRowHeight = 120
        
        // 아주 중요(이게 있어야 아래있는 extension과 연결이 된다 = linking)
        self.MyTableView.delegate = self
        self.MyTableView.dataSource = self
        
        print("contentArray.count : \(contentArray.count)")
        
    }


}

extension MyTableVC : UITableViewDelegate{
    
}

extension MyTableVC : UITableViewDataSource{
    // numberOfRowsInSection = 테이블 뷰 셀의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
    }
    
    // 각각 셀에 대한 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! MytableViewCell // as! -> 강제로 타입을 MyTableViewCell로 바꾸겠다 라는 뜻
        
        // 타입을 바꿔야 userContentLabel에 접근이 가능해진다.
        cell.userContentLabel.text = contentArray[indexPath.row]
        
        // 이렇게 MyTableViewCell.swift에 있는 코드를 여기서도 정의할 수 있다 (하지만 UI적인 코드를 데이터랑 연결시킬 필요가 없으므로)
//        cell.userProfileImg.layer.cornerRadius = cell.userProfileImg.frame.height / 2
        
        return cell
    }
    
    
}

