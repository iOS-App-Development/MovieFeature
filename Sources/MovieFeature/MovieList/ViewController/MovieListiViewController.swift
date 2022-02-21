//
//  MovieListiViewController.swift
//  
//
//  Created by Muzammil Peer on 21/02/2022.
//
#if os(iOS)
import UIKit
#endif

class MovieListViewController: UIViewController {
    
    var menuTagsViewController:UIViewController? = nil
    var actionsViewController:UIViewController? = nil
    var moviesViewController:UIViewController? = nil


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let menuTagsViewController = self.getChild(MenuTagsViewController.self) else  {
            fatalError("Check storyboard for missing menuTagsViewController")
        }
        self.menuTagsViewController = menuTagsViewController
        
        guard let actionsViewController = self.getChild(ActionsViewController.self) else  {
            fatalError("Check storyboard for missing actionsViewController")
        }
        self.actionsViewController = actionsViewController

        guard let moviesViewController = self.getChild(MoviesViewController.self) else  {
            fatalError("Check storyboard for missing moviesViewController")
        }
        self.moviesViewController = moviesViewController

    }
    
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      let destination = segue.destination
//      if let locationController = destination as? LocationTableViewController {
//        locationTableViewController = locationController
//        locationController.delegate = self
//      }
//
//      if let mapController = destination as? MapViewController {
//        mapViewController = mapController
//      }
//    }


}
