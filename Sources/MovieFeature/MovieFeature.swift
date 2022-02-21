#if !os(macOS)
import UIKit
#endif

public struct MovieFeature {
    public private(set) var text = "Hello, World!"
    
    private let navigationController:UINavigationController

    public init(navigatoinController:UINavigationController) {
        self.navigationController = navigatoinController
    }
}

extension MovieFeature:MovieFeatureAPI
{
    func load() {
        let storyboarded:UIStoryboard = UIStoryboard.init(name: "Movies", bundle: .module)
        let viewController:UIViewController = storyboarded.instantiateViewController(withIdentifier: "MovieListViewController")
        self.navigationController.show(viewController, sender: nil)
    }
    
    func unload() {
        self.navigationController.popViewController(animated: true)
    }
}
