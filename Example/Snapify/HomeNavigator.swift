//
//  HomeNavigator.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class HomeNavigator: NavigatorLayer {
    
    func showMessage(message: String) {
        let detailViewController = ViewStore.shared[DetailViewController.self]
        detailViewController.presenter?.message = message
        viewController?.present(detailViewController, animated: true, completion: nil)
    }
    
}
