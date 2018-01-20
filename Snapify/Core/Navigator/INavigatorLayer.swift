//
//  INavigatorLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import UIKit

/// Represents abstarct layer of Snapify architecture that
/// responds for control View's navigation flow.
public protocol INavigatorLayer: SnapifyLayer {
    
    /// The View Controller instance.
    /// [IMPORTANT] Should be a weak reference.
    weak var viewController: UIViewController? { get }
    
    /// Initialize Rotuter layer.
    ///
    /// - parameters:
    ///   - viewController: Instance of View Controller.
    init(_ viewController: UIViewController)
    
}
