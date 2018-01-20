//
//  DetailPresenter.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class DetailPresenter: PresenterLayer<DetailNavigator> {
    
    var message: String?
    
    func closeAction() {
        navigator?.dismissViewController()
    }
    
}
