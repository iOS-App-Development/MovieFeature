//
//  ViewController.swift
//  MovieFeatureApp-iOS
//
//  Created by Muzammil Peer on 21/02/2022.
//

import UIKit
import MovieFeature

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionOpenNewScreen()
    {
        let moviesModule:MovieFeature = MovieFeature.init(navigatoinController: self.navigationController!)
        moviesModule.load()
    }
}

