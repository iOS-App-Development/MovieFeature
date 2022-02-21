
@_exported import SharedModule
#if !os(macOS)
import UIKit
#endif

open class MovieFeature {
    private let navigationController:UINavigationController

    public init(navigatoinController:UINavigationController) {
        self.navigationController = navigatoinController
    }

}

extension MovieFeature:MovieFeatureAPI
{
    public func load() {
        let storyboarded:UIStoryboard = UIStoryboard.init(name: "Movies", bundle: .module)
        let viewController:UIViewController = storyboarded.instantiateViewController(withIdentifier: "MovieListViewController")
        self.navigationController.pushViewController(viewController, animated: false)
    }

    public func unload() {
        self.navigationController.popViewController(animated: true)
    }
}
