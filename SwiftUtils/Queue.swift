//
//  Queue.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

class Queue<T> {
    var head: Node<T>! = Node<T>()
    
    func enqueue(var key: T) {
        if head == nil {
            head = Node()
        }
        
        if head.key == nil {
            head.key = key
            return
        }
        
        var nodeToUse: Node<T> = Node<T>()
        var current: Node = head
        
        while current.next != nil {
            current = current.next!
        }
        
        nodeToUse.key = key
        current.next = nodeToUse
    }
    
     func dequeue() -> T? {
        let headItem: T? = self.head?.key
        if headItem == nil {
            return nil
        }
        
        var item: T? = head.key!
        
        if let nextitem = head.next {
            head = nextitem
        } else {
            head = nil
        }
        
        return item
    }
    
    func isEmpty() ->Bool {
        if let top: T = head?.key {
            return false
        } else {
            return true
        }
    }
    
    func peek() -> T? {
        return head.key!
    }
}
