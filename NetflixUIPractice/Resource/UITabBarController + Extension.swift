import UIKit

extension UITabBarController {
    func configureItemDesing(tabBar : UITabBar) {
            
        tabBar.tintColor = .white
        tabBar.barTintColor = .white
        
        // item 디자인
        if let item = tabBar.items {
            item[0].image = UIImage(systemName: "house.fill")
            item[0].title = "홈"
        }
        

    }
}
