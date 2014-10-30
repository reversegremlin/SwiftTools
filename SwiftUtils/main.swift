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
//
//func insertionSort <T> (inout data:[T]) {
//    var newData = data as Array
//    let count: Int = newData.count
//
//    for (var i = 0; i < count; ++i) {
//        var j = i
//        if (j > 0) {
//            
//            // This is where I need to do the case switching
//            
//            let x = newData[j] as Int
//            let y = newData[j - 1] as Int
//            
//            if x > y {
//                let z = newData[j]
//                newData[j] = newData[j - 1]
//                newData[j - 1] = z
//            }
//        }
//    }
//    data = newData
//}

var rArray: [Int] = []


for nums in 1...100 {
    let ran = Int(arc4random() % 26)
    rArray.append(ran)
}

insertionSort(&rArray)

for thing in rArray {
    println(thing)
}

//switch a {
//case let left as Int:
//    let right = b as Int
//    if left > right {
//        swap()
//        j--
//    }
    //            case let left as Float:
    //                let right = b as Float
    //                if left > right {
    //                    swap()
    //                }
    //            case let left as Double:
    //                let right = b as Double
    //                if left > right {
    //                    swap()
    //                }
//default :
//    println("I have no idea")
//}


//func swap() {
//    let tmp = a
//    newData[j - 1] = b
//    newData[j] = tmp
//}




