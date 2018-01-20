//
//  DependencyDescriptors.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import Foundation

internal class DependencyDescriptors {
    
    private let dispatchQueue = DispatchQueue(label: "com.Snapify.DependencyDescriptorsQueue")
    private var dependencyDescriptors = [String: DependencyDescriptor]()
    
    private func dependencyIdentifier<T>(type: T.Type, name: String?) -> String {
        let separator = ((name ?? "").count > 0 ? "-" : "")
        return String(describing: type) + separator + (name ?? "DefaultName")
    }
    
    subscript<T>(type: T.Type, name: String?) -> DependencyDescriptor {
        get {
            var item: DependencyDescriptor? = nil
            let itemId = dependencyIdentifier(type: type, name: name)
            dispatchQueue.sync { item = dependencyDescriptors[itemId] }
            guard let _ = item else { fatalError("Dependency with id \"\(itemId)\" not exists") }
            return item!
        }
        set {
            let item: DependencyDescriptor = newValue
            let itemId = dependencyIdentifier(type: type, name: name)
            dispatchQueue.sync { dependencyDescriptors[itemId] = item }
        }
    }
    
}
