//
//  SecondAssembly.swift
//  Snapify_Example
//
//  Created by Grzegorz Sagadyn on 06.01.2018.
//

import UIKit
import Snapify

public protocol ISecondAssembly: IAssemblyLayer {
    func getMessageSecondPart() -> String
}

internal class SecondAssembly: AssemblyLayer, ISecondAssembly {
    
    func getMessageSecondPart() -> String {
        return "World!"
    }
    
}
