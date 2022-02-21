#if !os(macOS)
import UIKit
#endif

protocol MovieFeatureAPI {
    func load()
    func unload()
}


public class MovieFeature:MovieFeatureAPI {
    public private(set) var text = "Hello, World!"
    
    private let navigationController:UINavigationController

    public init(navigatoinController:UINavigationController) {
        self.navigationController = navigatoinController
    }
    func load() {
        let storyboarded:UIStoryboard = UIStoryboard.init(name: "Movies", bundle: .module)
        let viewController:UIViewController = storyboarded.instantiateViewController(withIdentifier: "MovieListViewController")
        self.navigationController.show(viewController, sender: nil)
    }
    
    func unload() {
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

/// A type that contributes to the object graph.
public struct Module {
    fileprivate let name: String
    fileprivate let resolve: () -> Any
    
    public init<T>(_ name: String? = nil, _ resolve: @escaping () -> T) {
        self.name = name ?? String(describing: T.self)
        self.resolve = resolve
    }
}
