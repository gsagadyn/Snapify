//
//  AssemblyStore.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import Foundation
import Snapify

class AssemblyStore: DependencyStore {
    static let shared = AssemblyStore()
    
    required init() {
        super.init()
        registerModule(DefaultAssemblyStoreModule())
    }
}

// ----------------------------------------------------------------------------------------------------------------
//MARK: - Default Module
// ----------------------------------------------------------------------------------------------------------------

class DefaultAssemblyStoreModule: IDependencyStoreModule {
    
    func load(to dependencyStore: DependencyStore) {
        dependencyStore.bind(closure: { () -> IFirstAssembly in
            return FirstAssembly()
        })
        
        dependencyStore.bind(closure: { () -> ISecondAssembly in
            return SecondAssembly()
        })
    }
    
}
