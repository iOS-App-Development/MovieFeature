#if !os(macOS)
import UIKit
#endif

protocol MovieFeatureAPI {
    func load()
    func unload()
}


open class MovieFeature:MovieFeatureAPI {
    private let navigationController:UINavigationController

    public init(navigatoinController:UINavigationController) {
        self.navigationController = navigatoinController
    }
    open func load() {
        let storyboarded:UIStoryboard = UIStoryboard.init(name: "Movies", bundle: .module)
        let viewController:UIViewController = storyboarded.instantiateViewController(withIdentifier: "MovieListViewController")
        self.navigationController.show(viewController, sender: nil)
    }
    
    open func unload() {
        self.navigationController.popViewController(animated: true)
    }
}
//
//extension MovieFeature:MovieFeatureAPI
//{
//    func load() {
//        let storyboarded:UIStoryboard = UIStoryboard.init(name: "Movies", bundle: .module)
//        let viewController:UIViewController = storyboarded.instantiateViewController(withIdentifier: "MovieListViewController")
//        self.navigationController.show(viewController, sender: nil)
//    }
//
//    func unload() {
//        self.navigationController.popViewController(animated: true)
//    }
//}
