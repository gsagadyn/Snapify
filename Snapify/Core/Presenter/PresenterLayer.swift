//
//  PresenterLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 05.01.2018.
//

import Foundation

/// Base implementation of IPresenterLayer with default Navigator.
public typealias SimplePresenterLayer = PresenterLayer<NavigatorLayer>

/// Base implementation of IPresenterLayer.
open class PresenterLayer<N: INavigatorLayer>: IPresenterLayer {
    public typealias NavigatorLayerType = N
    
    public var navigator: N?
    
    public required init(_ navigator: N? = nil) {
        self.navigator = navigator
    }
    
}
