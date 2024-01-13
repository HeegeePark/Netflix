//
//  SearchViewController.swift
//  Netflix
//
//  Created by 박희지 on 12/28/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var comingSoonButton: UIButton!
    @IBOutlet var popularContentsButton: UIButton!
    @IBOutlet var top10SeriesButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(comingSoonButton, title: "공개 예정", image: UIImage(named: "blue")!)
        designButton(popularContentsButton, title: "모두의 인기 콘텐츠", image: UIImage(named: "turquoise")!)
        designButton(top10SeriesButton, title: "TOP 10 시리즈", image: UIImage(named: "pink")!)
    }
    
    
    @IBAction func comingSoonButtonTapped(_ sender: Any) {
        updateButton(comingSoonButton, active: true)
        updateButton(popularContentsButton, active: false)
        updateButton(top10SeriesButton, active: false)
        
        updateLables(result: "어머! 공개 예정된 작품이 없습니다.", description: "곧 좋은 소식 가져올테니 기다려 주세요🙏")
    }
    
    @IBAction func popularContentsButtonTapped(_ sender: Any) {
        updateButton(comingSoonButton, active: false)
        updateButton(popularContentsButton, active: true)
        updateButton(top10SeriesButton, active: false)
        
        updateLables(result: "웁스! 모두의 인기 콘텐츠 작품이 없습니다.", description: "인기란 얻기 어려운 법이죠✨")
    }
    
    @IBAction func top10SeriesButtonTapped(_ sender: Any) {
        updateButton(comingSoonButton, active: false)
        updateButton(popularContentsButton, active: false)
        updateButton(top10SeriesButton, active: true)
        
        updateLables(result: "맙소사! TOP 10 작품이 없습니다.", description: "왜 없는지는 같이 생각해봐요😇")
    }
    
    // 디자인 버튼
    func designButton(_ button: UIButton, title: String, image: UIImage) {
        button.setTitle(title, for: .normal)
        button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        button.setTitleColor(.lightGray, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.layer.cornerRadius = 18
    }
    
    // 버튼 선택 여부 업데이트
    func updateButton(_ button: UIButton, active: Bool) {
        button.isSelected = active
        button.backgroundColor = active ? .white: .black
    }
    
    // 레이블 문구 업데이트
    func updateLables(result: String, description: String) {
        resultLabel.text = result
        descriptionLabel.text = description
    }
}
