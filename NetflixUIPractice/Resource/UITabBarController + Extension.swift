import UIKit

extension UITabBarController {
    func configureItemDesing(tabBar : UITabBar) {
            
        tabBar.tintColor = .white
        tabBar.barTintColor = .white
        
        // item 디자인
        if let item = tabBar.items {
            item[0].image = UIImage(systemName: "house.fill")
            item[0].title = "홈"
            item[1].image = UIImage(systemName: "play.rectangle.on.rectangle")
            item[1].title = "NEW & HOT"
            item[2].image = UIImage(systemName: "square.and.arrow.down")
            item[2].title = "저장 콘텐트 목록"

        }
        

    }
}
