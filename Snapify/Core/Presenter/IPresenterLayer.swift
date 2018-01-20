//
//  IPresenterLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//  Copyright © 2018 Grzegorz Sagadyn. All rights reserved.
//

import UIKit

/// Represents abstarct layer of Snapify architecture
/// that implement screen's business logic.
public protocol IPresenterLayer: SnapifyLayer {
    associatedtype NavigatorLayerType: INavigatorLayer
    
    /// The Navigator instance.
    var navigator: NavigatorLayerType? { get }
    
    /// Initialize Presenter layer.
    ///
    /// - parameters:
    ///   - navigator: Instance of Navigator.
    init(_ navigator: NavigatorLayerType?)
    
}
