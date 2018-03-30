//
//  DependencyType.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

/// Defines dependency type
public enum DependencyType {
    
    /// Dependency always returns new instance of resolving interface/class
    case weak
    
    /// Dependency always returns the same instance of resolving interface/class
    case strong
    
}
