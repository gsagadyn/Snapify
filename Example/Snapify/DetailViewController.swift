//
//  DetailViewController.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

class DetailViewController: UserInterfaceLayer.Controller<DetailPresenter>, UIStoryboardInstantiate {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = presenter?.message
    }
    
    @IBAction func closeAction(_ sender: Any) {
        presenter?.closeAction()
    }
    
}
