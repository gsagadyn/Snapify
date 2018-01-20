//
//  UINibInstantiate.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import UIKit

/// Adds methods to create an instance of view controller from nib.
public protocol UINIBInstantiate { }

public extension UINIBInstantiate where Self: UIViewController {
    
    /// Instantiates UIViewController from NIB.
    ///
    /// - parameters:
    ///   - nibName: The name of nib that contains view controller.
    ///   - bundle: The bundle in which to search for the nib file.
    /// - returns: The view controller instance.
    public static func instantiate(nibName: String? = nil, bundle: Bundle? = nil) -> Self {
        return Self(nibName: (nibName ?? String(describing: self)), bundle: bundle)
    }
    
}

public extension UINIBInstantiate where Self: UIView {
    
    /// Instantiates UIView from NIB.
    ///
    /// - parameters:
    ///   - nibName: The name of nib that contains view controller.
    ///   - bundle: The bundle in which to search for the nib file.
    /// - returns: The view controller instance.
    public static func instantiate(nibName: String? = nil, bundle: Bundle? = nil) -> Self {
        let bundleInstance = (bundle ?? Bundle.main)
        let name = (nibName ?? String(describing: self))
        return bundleInstance.loadNibNamed(name, owner: nil, options: nil)!.first as! Self
    }
    
}
