//
//  HomeViewController.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class HomeViewController: UserInterfaceLayer.Controller<HomePresenter>, UIStoryboardInstantiate {
    
    @IBAction func buttonAction(_ sender: Any) {
        presenter?.buttonAction()
    }
    
}
