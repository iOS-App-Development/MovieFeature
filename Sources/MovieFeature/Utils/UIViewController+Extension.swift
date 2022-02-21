//
//  UIViewController+Extension.swift
//  
//
//  Created by Muzammil Peer on 21/02/2022.
//
#if os(iOS)
import UIKit
#endif
//#if !os(macOS)
//#endif

extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)

        if let frame = frame {
            child.view.frame = frame
        }

        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove() {
        // Just to be safe, we check that this view controller
        // is actually added to a parent before removing it.
        guard parent != nil else {
            return
        }
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
    
    func getChild(_ childViewController:UIViewController.Type) -> UIViewController? {
        for item:UIViewController in self.children {
            if type(of: item) === childViewController {
                return item
            }
        }
        return nil
    }
}
