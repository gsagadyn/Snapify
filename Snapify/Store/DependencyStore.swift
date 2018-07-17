//
//  DependencyStore.swift
//  Snapify
//
//  Created by Grzegorz Sagadyn on 03.01.2018.
//

import UIKit

/// Implementation of dependance store.
open class DependencyStore {
    
    private var dependencyDescriptors = DependencyDescriptors()
    
    /// Creates instance of store.
    public required init() { }
    
    /// Register bindings defined within module.
    ///
    /// - parameters:
    ///   - module: A class that definies binding.
    public func registerModule<T : IDependencyStoreModule>(_ module: T) {
        module.load(to: self)
    }
    
}

// ----------------------------------------------------------------------------------------------------------------
// MARK: - Subscript
// ----------------------------------------------------------------------------------------------------------------

extension DependencyStore {
    
    /// Returns an insance of an object based on existing bindings or will trigger fatal error if missing.
    ///
    /// - parameters:
    ///   - type: Type of object to provide.
    /// - returns: An instance of class or an implementation of a protocol.
    public subscript<T>(type: T.Type) -> T {
        get { return self[type, nil] }
    }
    
    /// Returns an insance of an object based on existing bindings or will trigger fatal error if missing.
    ///
    /// - parameters:
    ///   - type: Type of object to provide.
    ///   - name: Name of dependency.
    /// - returns: An instance of class or an implementation of a protocol.
    public subscript<T>(type: T.Type, name: String?) -> T {
        get { return dependencyDescriptors[type, name].resolve() }
    }
    
}

// ----------------------------------------------------------------------------------------------------------------
// MARK: - Create Bindings
// ----------------------------------------------------------------------------------------------------------------

extension DependencyStore {
    
    /// Binds a class/protocol to an instance provided through a closure.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping (())->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            return closure(())
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers one auto-resolved argument.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            return closure((a))
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers two auto-resolved arguments.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A, B>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A, B))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            let b: B = self[B.self]
            return closure((a, b))
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers three auto-resolved arguments.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A, B, C>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A, B, C))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            let b: B = self[B.self]
            let c: C = self[C.self]
            return closure((a, b, c))
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers four auto-resolved arguments.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A, B, C, D>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A, B, C, D))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            let b: B = self[B.self]
            let c: C = self[C.self]
            let d: D = self[D.self]
            return closure((a, b, c, d))
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers five auto-resolved arguments.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A, B, C, D, E>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A, B, C, D, E))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            let b: B = self[B.self]
            let c: C = self[C.self]
            let d: D = self[D.self]
            let e: E = self[E.self]
            return closure((a, b, c, d, e))
        }
    }
    
    /// Binds a class/protocol to an instance provided through a closure.
    /// Closure delivers six auto-resolved arguments.
    ///
    /// - parameters:
    ///   - type: Type of class or protocol.
    ///   - name: Name of dependency.
    ///   - dependencyType: Defines dependency type [weak / strong].
    ///   - closure: Closure that produce an injection object.
    public func bind<T, A, B, C, D, E, F>(type: T.Type = T.self, name: String? = nil, dependencyType: DependencyType = .weak, closure: @escaping ((A, B, C, D, E, F))->T) {
        dependencyDescriptors[type, name] = DependencyDescriptor(dependencyType: dependencyType) {
            let a: A = self[A.self]
            let b: B = self[B.self]
            let c: C = self[C.self]
            let d: D = self[D.self]
            let e: E = self[E.self]
            let f: F = self[F.self]
            return closure((a, b, c, d, e, f))
        }
    }
    
}

// ----------------------------------------------------------------------------------------------------------------
// MARK: - Reestablish
// ----------------------------------------------------------------------------------------------------------------

extension DependencyStore {
    
    /// Reestablish dependency described by type and name.
    ///
    /// - parameters:
    ///   - type: Protocol or a Class.
    ///   - name: Name of dependency.
    public func reestablish<T>(type: T.Type, name: String? = nil) {
        dependencyDescriptors[type, name].reestablish()
    }
    
}
