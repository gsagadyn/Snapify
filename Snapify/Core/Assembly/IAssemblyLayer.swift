//
//  IAssemblyLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

/// Represents abstarct layer of a Snapify architecture
/// that contains a set of definition of atomic operations.
public protocol IAssemblyLayer: SnapifyLayer {
    
    /// Base layer initializer.
    init()
    
}
