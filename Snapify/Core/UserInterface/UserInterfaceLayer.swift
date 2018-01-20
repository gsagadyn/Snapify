//
//  UserInterfaceLayer.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import Foundation

/// View layer implementation namespace.
public struct UserInterfaceLayer {
    
    private init() { }
    
    /// Base implementation of IUserInterfaceLayer which inherits by UIViewController with default Presenter type.
    public typealias SimpleController = Controller<SimplePresenterLayer>
    
    /// Base implementation of IUserInterfaceLayer which inherit by UIViewController.
    open class Controller<P: IPresenterLayer>: UIViewController, IUserInterfaceLayer {
        public typealias PresenterLayerType = P
        
        public var presenter: PresenterLayerType?
        
    }
    
    /// Base implementation of IUserInterfaceLayer which inherits by UIView with default Presenter type.
    public typealias SimpleView = Controller<SimplePresenterLayer>
    
    /// Base implementation of IUserInterfaceLayer which inherit by UIView.
    open class View<P: IPresenterLayer>: UIView, IUserInterfaceLayer {
        public typealias PresenterLayerType = P
        
        public var presenter: PresenterLayerType?
        
    }
    
}
