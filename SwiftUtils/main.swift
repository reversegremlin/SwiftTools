//
//  main.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Foundation

println("Hello, World!")

var q = Queue<String>()
q.enqueue("Coffee")
q.enqueue("Tea")
q.enqueue("Milk")
let test = q.dequeue()!
println(test)
println(q.peek()!)

var s = Stack<String>()
s.push("Niblet")
s.push("Sarah")
s.push("Sally")


for index in 1...10 {
    if let foo = s.pop() {
        println(foo)
    }
}

var rArray: [Int] = []


for nums in 1...1000 {
    let ran = Int(arc4random() % 1000)
    rArray.append(ran)
}

insertionSort(&rArray)

for thing in rArray {
    println(thing)
}


