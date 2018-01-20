//
//  ViewStore.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 05.01.2018.
//

import Foundation
import Snapify

class ViewStore: DependencyStore {
    static let shared = ViewStore()
    
    required init() {
        super.init()
        registerModule(DefaultViewStoreModule())
    }
}

// ----------------------------------------------------------------------------------------------------------------
//MARK: - Default Module
// ----------------------------------------------------------------------------------------------------------------

class DefaultViewStoreModule: IDependencyStoreModule {
    
    func load(to dependencyStore: DependencyStore) {
        
        dependencyStore.bind(closure: { () -> HomeViewController in
            let vc = HomeViewController.instantiate()
            vc.presenter = HomePresenter(HomeNavigator(vc))
            return vc
        })
        
        dependencyStore.bind(closure: { () -> DetailViewController in
            let vc = DetailViewController.instantiate()
            vc.presenter = DetailPresenter(DetailNavigator(vc))
            return vc
        })
    }
    
}
