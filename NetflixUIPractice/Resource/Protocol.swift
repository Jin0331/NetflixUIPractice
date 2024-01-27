import UIKit

protocol ViewSetup : AnyObject {
    func configureHierarchy ()
    func configureView()
    func setupConstraints()
}
