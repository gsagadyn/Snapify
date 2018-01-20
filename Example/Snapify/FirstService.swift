//
//  FirstService.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 20.01.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Snapify

public protocol IFirstService: IServiceLayer {
    func getMessage() -> String
}

internal class FirstService: ServiceLayer, IFirstService {
    
    func getMessage() -> String {
        let firstAssemblly = AssemblyStore.shared[IFirstAssembly.self]
        let secondAssemblly = AssemblyStore.shared[ISecondAssembly.self]
        return firstAssemblly.getMessageFirstPart() + " " + secondAssemblly.getMessageSecondPart()
    }
    
}
