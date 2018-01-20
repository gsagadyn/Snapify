//
//  FirstAssembly.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import UIKit
import Snapify

public protocol IFirstAssembly: IAssemblyLayer {
    func getMessageFirstPart() -> String
}

internal class FirstAssembly: AssemblyLayer, IFirstAssembly {
    
    func getMessageFirstPart() -> String {
        return "Hello"
    }
    
}
