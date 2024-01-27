//
//  SaveContentsViewController.swift
//  NetflixUIPractice
//
//  Created by JinwooLee on 1/27/24.
//

import UIKit

class SaveContentsViewController: UIViewController, ViewSetup {

    let mainLabel : UILabel = {
        let mainLabel = UILabel()
        mainLabel.text = "'나만의 자동 저장' 기능"
        mainLabel.textAlignment = .center
        mainLabel.font = .systemFont(ofSize: 23, weight: .heavy)
        mainLabel.textColor = .white
        
        return mainLabel
    }()
    
    let subLabel: UILabel = {
        let subLabel = UILabel()
        subLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해드립니다. 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        subLabel.textAlignment = .center
        subLabel.font = .systemFont(ofSize: 15, weight: .heavy)
        subLabel.numberOfLines = 0
        subLabel.textColor = .systemGray
        
        return subLabel
    }()
    
    let mainImageView : UIImageView = {
        let mainImageView = UIImageView()
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.image = UIImage(named: "dummy")
        
        return mainImageView
    }()
    
    let mainButton : UIButton = {
        let mainButton = UIButton()
        mainButton.setTitle("설정하기", for: .normal)
        mainButton.backgroundColor = .blue
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .heavy)
        mainButton.clipsToBounds = true
        mainButton.layer.cornerRadius = 5
       
        return mainButton
    }()
    
    let subButton : UIButton = {
        let subButton = UIButton()
        subButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        subButton.titleLabel?.textAlignment = .center
        subButton.backgroundColor = .white
        subButton.setTitleColor(.black, for: .normal)
        subButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .heavy)
        subButton.clipsToBounds = true
        subButton.layer.cornerRadius = 5

        return subButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigation()
        configureView()
        configureHierarchy()
        setupConstraints()
    }
    
    func configureHierarchy() {
        [mainLabel, subLabel, mainImageView, mainButton, subButton].map { value in
            return view.addSubview(value)
        }
    }
    
    func configureView() {
        view.backgroundColor = .black
    }
    
    func setupConstraints() {
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(90)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        subLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.top).offset(50)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.greaterThanOrEqualTo(mainImageView.snp.top)
        }
        
        mainImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
        }
        
        mainButton.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(50)
            make.leading.trailing.equalTo(view).inset(60)
            make.height.equalTo(35)
        }
        
        subButton.snp.makeConstraints { make in
            make.top.equalTo(mainButton.snp.bottom).offset(20)
            make.height.equalTo(mainButton)
            make.leading.trailing.equalTo(mainButton).inset(30)
        }
    }
    
    func configureNavigation () {
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20, weight: .heavy)
        ]
        navigationItem.title = "저장한 콘텐츠 목록"

    }

}
