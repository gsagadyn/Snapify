//
//  NavigatorLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 05.01.2018.
//

import UIKit

/// Base implementation of INavigatorLayer.
open class NavigatorLayer: INavigatorLayer {
    public private(set) weak var viewController: UIViewController?
    
    public required init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
}
