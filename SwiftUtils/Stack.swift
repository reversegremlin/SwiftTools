//
//  Stack.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

class Stack<T> {
    var items = [T]()
    
    func push(item: T) {
        items.append(item)
    }
    
    func pop() -> T? {
        if items.count > 0 {
        return items.removeLast()
        } else {
            return nil
        }
    }
    
    func peek() -> T {
        return items.last!
    }
    
    var count: Int {
        return items.count
    }
    
    var size: Int {
        return items.count
    }
}