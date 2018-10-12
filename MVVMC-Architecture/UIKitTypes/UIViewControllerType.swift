
import UIKit

protocol UIViewControllerType: class {
    var viewType: UIViewType { get }

    func addFillerChildViewController(_ childController: UIViewControllerType, toView: UIViewType?)
    func addChildViewController(_ childController: UIViewControllerType)
    func didMove(toParentViewController parent: UIViewControllerType?)
    func removeFromParentViewController()
}
