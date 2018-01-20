//
//  DetailNavigator.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class DetailNavigator: NavigatorLayer {
    
    func dismissViewController() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
}
