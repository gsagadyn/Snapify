//
//  IDependencyStoreModule.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

/// Represents module that gathering dependencies with similar context.
public protocol IDependencyStoreModule: class {
    
    /// Adds module's dependencies to dependency store
    ///
    /// - parameters:
    ///   - dependencyStore: Instance of dependency store.
    func load(to dependencyStore: DependencyStore)
    
}
