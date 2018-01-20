//
//  DependencyDescriptor.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

internal class DependencyDescriptor {
    
    fileprivate let dependencyType: DependencyType
    fileprivate let closure: ()->Any
    fileprivate var instance: Any?
    
    init(dependencyType: DependencyType = .Weak, closure: @escaping ()->Any) {
        self.dependencyType = dependencyType
        self.closure = closure
    }
    
}

// ----------------------------------------------------------------------------------------------------------------
// MARK: - Resolve / Reset Bind
// ----------------------------------------------------------------------------------------------------------------

internal extension DependencyDescriptor {
    
    func resolve<T>() -> T {
        let instanceTmp = instance ?? closure()
        instance = (dependencyType == .Strong ? instanceTmp : nil)
        return instanceTmp as! T
    }
    
    func reestablish() {
        instance = nil
    }
    
}
