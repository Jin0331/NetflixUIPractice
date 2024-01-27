//
//  NetfilxViewController.swift
//  NetflixUIPractice
//
//  Created by JinwooLee on 1/26/24.
//

import UIKit
import SnapKit

class NetfilxViewController: UIViewController, ViewSetup {

    let mainImageView = UIImageView()
    let descriptionLabel = UILabel()
    let playButton = UIButton()
    let selectedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        configureNavigation()
        configureHierarchy()
        setupConstraints()
        configureView()
    }
    
    func configureHierarchy () {
        view.addSubview(mainImageView)
        mainImageView.addSubview(descriptionLabel)
        mainImageView.addSubview(playButton)
        mainImageView.addSubview(selectedButton)
    }

    
    func configureView() {
        mainImageView.contentMode = .scaleToFill
        mainImageView.clipsToBounds = true
        mainImageView.layer.cornerRadius = 13
        mainImageView.image = UIImage(named: "명량")
        
        descriptionLabel.text = "흥미진진한·사극·응원하고픈·전투·한국 작품"
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = .boldSystemFont(ofSize: 17)
        descriptionLabel.textColor = .white
        
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.setTitle("재생", for: .normal)
        playButton.tintColor = .black
        playButton.setTitleColor(.black, for: .normal)
        playButton.backgroundColor = .white
        playButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        playButton.clipsToBounds = true
        playButton.layer.cornerRadius = 10
        
        selectedButton.setImage(UIImage(systemName: "plus"), for: .normal)
        selectedButton.setTitle("내가 찜한 리스트", for: .normal)
        selectedButton.tintColor = .white
        selectedButton.setTitleColor(.white, for: .normal)
        selectedButton.backgroundColor = .darkGray
        selectedButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        selectedButton.clipsToBounds = true
        selectedButton.layer.cornerRadius = 10
    }
    
    func setupConstraints() {
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(5)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.height.equalTo(460)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(80)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.top).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(155)
            make.leading.equalToSuperview().inset(20)
            
        }
        
        selectedButton.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.top).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(155)
            make.leading.equalTo(playButton.snp.trailing).offset(20)
        }
    }
    
    func configureNavigation () {
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20)
        ]
        navigationItem.title = "고래밥님"

    }
    
    
}
