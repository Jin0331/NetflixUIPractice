//
//  UIButton + Extension.swift
//  SeSAC4Network
//
//  Created by JinwooLee on 1/23/24.
//
import UIKit

extension UIButton.Configuration {
    
    static func playButtonStyle() -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
//        config.titleAlignment = .center
//        var titleAttr = AttributedString.init("재생")
//        titleAttr.font = .systemFont(ofSize: 15, weight: .heavy)
//        titleAttr.foregroundColor = .black
//        titleAttr.backgroundColor = .black
//        config.attributedTitle = titleAttr
//        config.baseForegroundColor = .white
//        config.baseBackgroundColor = .white
//        
//        config.image = UIImage(systemName: "play.fill")
//        config.imagePlacement = .leading
//        config.imagePadding = 3
//        config.cornerStyle = .dynamic
        
        return config
    }
}
