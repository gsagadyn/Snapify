//
//  IServiceLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

/// Represents abstarct layer of a Snapify architecture
/// that contains a set of definition of complex operations.
/// Layer compose complex operations by using set of atomic
/// operations delivered by assembly layer.
public protocol IServiceLayer: SnapifyLayer {
    
    /// Base layer initializer.
    init()
    
}
