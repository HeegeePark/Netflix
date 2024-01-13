//
//  HomeViewController.swift
//  Netflix
//
//  Created by 박희지 on 12/28/23.
//

import UIKit

// 첫번째 탭바와 연결된 뷰컨트롤러
class HomeViewController: UIViewController {
    
    @IBOutlet var mainPosterImageView: UIImageView!
    
    @IBOutlet var hot1PosterImageView: UIImageView!
    @IBOutlet var hot1logoImageView: UIImageView!
    @IBOutlet var hot1Top10ImageView: UIImageView!
    @IBOutlet var hot1NewEpisodeView: UIView!
    
    @IBOutlet var hot2PosterImageView: UIImageView!
    @IBOutlet var hot2logoImageView: UIImageView!
    @IBOutlet var hot2Top10ImageView: UIImageView!
    @IBOutlet var hot2NewEpisodeView: UIView!
    
    @IBOutlet var hot3PosterImageView: UIImageView!
    @IBOutlet var hot3logoImageView: UIImageView!
    @IBOutlet var hot3Top10ImageView: UIImageView!
    @IBOutlet var hot3NewEpisodeView: UIView!
    
    @IBOutlet var playButton: UIButton!
    
    let posterList: [String] = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속", "아바타물의길", "오펜하이머", "육사오", "콘크리트유토피아"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designPosterImageView(mainPosterImageView, borderColor: UIColor.blue.cgColor)
        designPosterImageView(hot1PosterImageView, borderColor: UIColor.red.cgColor)
        designPosterImageView(hot2PosterImageView, borderColor: UIColor.red.cgColor)
        designPosterImageView(hot3PosterImageView, borderColor: UIColor.red.cgColor)
    }
    

    // 재생 버튼을 누르면 포스터 랜덤 셔플
    @IBAction func playButtonTapped(_ sender: Any) {
        randomPosterImageView(mainPosterImageView)
        randomPosterImageView(hot1PosterImageView, logo: hot1logoImageView, top10: hot1Top10ImageView, newEp: hot1NewEpisodeView)
        randomPosterImageView(hot2PosterImageView, logo: hot2logoImageView, top10: hot2Top10ImageView, newEp: hot2NewEpisodeView)
        randomPosterImageView(hot3PosterImageView, logo: hot3logoImageView, top10: hot3Top10ImageView, newEp: hot3NewEpisodeView)
    }
    
    // 포스터 이미지뷰 테두리 디자인
    func designPosterImageView(_ imageView: UIImageView, borderColor: CGColor) {
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = borderColor
    }
    
    // 포스터 이미지 랜덤 지정
    func randomPosterImageView(_ imageView: UIImageView, logo logoImageView: UIImageView? = nil, top10 top10ImageView: UIImageView? = nil, newEp newEpisodeImageView: UIView? = nil) {
        let poster = posterList.randomElement()!
        imageView.image = UIImage(named: poster)
        
        logoImageView?.isHidden = Bool.random()
        top10ImageView?.isHidden = Bool.random()
        newEpisodeImageView?.isHidden = Bool.random()
    }
}
