//
//  Utils.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

//func insertionSort <T> (inout data:[T]) {
    func insertionSort (inout data:[Int]) {
        var newData = data
        let count: Int = newData.count
        
        for (var i = 1; i < count; ++i) {
            var j = i
            while (j > 0) && newData[j - 1] > newData[j] {

                let z = newData[j]
                newData[j] = newData[j - 1]
                newData[j - 1] = z
                j--
                }
            }
        data = newData
    }

func insertionSort (inout data:[String]) {
    var newData = data
    let count: Int = newData.count

    for (var i = 1; i < count; ++i) {
        var j = i
        while (j > 0) && newData[j - 1] > newData[j] {

            let z = newData[j]
            newData[j] = newData[j - 1]
            newData[j - 1] = z
            j--
        }
    }
    data = newData
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


