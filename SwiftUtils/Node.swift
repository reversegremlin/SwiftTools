//
//  Node.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

class Node<T> {
    var key: T? = nil
    var next: Node? = nil
    
    func description() ->String {
        var returnString = "<"
        returnString += _stdlib_getDemangledTypeName(self)
//        let b: AnyObject?  = k
        return returnString
    }
}
