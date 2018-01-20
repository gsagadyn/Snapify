//
//  ServiceStore.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import Foundation
import Snapify

class ServiceStore: DependencyStore {
    static let shared = ServiceStore()
    
    required init() {
        super.init()
        registerModule(DefaultServiceStoreModule())
    }
}

// ----------------------------------------------------------------------------------------------------------------
//MARK: - Default Module
// ----------------------------------------------------------------------------------------------------------------

class DefaultServiceStoreModule: IDependencyStoreModule {
    
    func load(to dependencyStore: DependencyStore) {
        dependencyStore.bind(closure: { () -> IFirstService in
            return FirstService()
        })
    }
    
}
