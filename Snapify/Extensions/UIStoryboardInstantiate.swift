//
//  UIStoryboardInstantiate.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 05.01.2018.
//

import UIKit

/// Adds methods to create an instance of view controller from storyboard.
public protocol UIStoryboardInstantiate { }

extension UIStoryboardInstantiate where Self: UIViewController {
    
    /// Instantiates view controller from storyboard.
    ///
    /// - parameters:
    ///   - storyboardName: The name of storyboard that contains view controller.
    ///   - storyboardIdentifier: The identifier that describes view controller.
    ///   - bundle: The bundle in which to search for the storyboard file.
    /// - returns: The view controller instance.
    public static func instantiate(storyboardName: String? = nil, storyboardIdentifier:String? = nil, bundle: Bundle? = nil) -> Self {
        let storyboard = UIStoryboard(name: (storyboardName ?? String(describing: self)), bundle: bundle)
        return instantiate(storyboard: storyboard, storyboardIdentifier: storyboardIdentifier)
    }
    
    /// Instantiates view controller from storyboard.
    ///
    /// - parameters:
    ///   - storyboard: The storyboard that contains view controller.
    ///   - storyboardIdentifier: The identifier that describes view controller.
    /// - returns: The view controller instance.
    public static func instantiate(storyboard: UIStoryboard, storyboardIdentifier:String? = nil) -> Self {
        let identifier = storyboardIdentifier ?? String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
    
}
