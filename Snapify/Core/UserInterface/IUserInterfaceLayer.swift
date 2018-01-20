//
//  IUserInterfaceLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//  Copyright © 2018 Grzegorz Sagadyn. All rights reserved.
//

import UIKit

/// Represents abstarct layer of a Snapify architecture
/// that adds basic functionality to a View.
public protocol IUserInterfaceLayer: SnapifyLayer {
    associatedtype PresenterLayerType: IPresenterLayer
    
    /// The Presenter instance.
    var presenter: PresenterLayerType? { get set }
    
}
