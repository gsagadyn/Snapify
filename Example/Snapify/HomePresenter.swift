//
//  HomePresenter.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class HomePresenter: PresenterLayer<HomeNavigator> {
    
    func buttonAction() {
        let testService = ServiceStore.shared[IFirstService.self]
        let message = testService.getMessage()
        navigator?.showMessage(message: message)
    }
    
}
