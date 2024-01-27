//
//  NewHotViewController.swift
//  NetflixUIPractice
//
//  Created by JinwooLee on 1/27/24.
//

import UIKit
import SnapKit

class NewHotViewController: UIViewController, ViewSetup {

    let searchBar : UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.placeholder = "게임, 시리즈, 영화를 검색하세요.."
        searchBar.searchBarStyle = .minimal
        searchBar.barStyle = .black
        searchBar.tintColor = .white
        
        return searchBar
    }()
    
    let subButtonSet = [UIButton(),UIButton(),UIButton()]
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        
        return stackView
    }()
    
    let mainLabel : UILabel = {
        let mainLabel = UILabel()
        mainLabel.text = "이런! 찾으시는 작품이 없습니다."
        mainLabel.font = .systemFont(ofSize: 23, weight: .heavy)
        mainLabel.textColor = .white
        
        return mainLabel
    }()
    
    let subLabel: UILabel = {
        let subLabel = UILabel()
        subLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        subLabel.font = .systemFont(ofSize: 15, weight: .heavy)
        subLabel.textColor = .systemGray
        
        return subLabel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigation()
        configureHierarchy()
        setupConstraints()
        configureView()
    }

    
    func configureHierarchy() {
        view.addSubview(searchBar)
        view.addSubview(stackView)
        subButtonSet.map { item in
            return self.stackView.addArrangedSubview(item)
        }
        view.addSubview(mainLabel)
        mainLabel.addSubview(subLabel)
    }
    
    func configureView() {
        view.backgroundColor = .black
        
        subButtonSet[0].setImage(UIImage(named: "blue"), for: .normal)
        subButtonSet[0].setTitle("공개 예정", for: .normal)
        subButtonSet[0].titleLabel?.font = .systemFont(ofSize: 13)
        subButtonSet[0].setTitleColor(.white, for: .normal)
        
        subButtonSet[1].setImage(UIImage(named: "turquoise"), for: .normal)
        subButtonSet[1].setTitle("모두의 인기 콘텐츠", for: .normal)
        subButtonSet[1].titleLabel?.font = .systemFont(ofSize: 13)
        subButtonSet[1].setTitleColor(.white, for: .normal)

        subButtonSet[2].setImage(UIImage(named: "pink"), for: .normal)
        subButtonSet[2].setTitle("TOP10 시리즈", for: .normal)
        subButtonSet[2].titleLabel?.font = .systemFont(ofSize: 13)
        subButtonSet[2].setTitleColor(.white, for: .normal)
    }
    
    func setupConstraints() {
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.trailing.equalTo(view)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(view.safeAreaLayoutGuide)
        }
        
        subLabel.snp.makeConstraints { make in
            make.centerX.equalTo(mainLabel)
            make.centerY.equalTo(mainLabel).offset(30)
        }
    }
    
    func configureNavigation () {
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20, weight: .heavy)
        ]
        navigationItem.title = "NEW & HOT 검색"

    }
}

