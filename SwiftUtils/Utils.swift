//
//  Utils.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

//
//func exchange<T>(data:[T], i:Int, j:Int) -> [T]
//{
//    var newData = data
//    newData[i] = data[j]
//    newData[j] = data[i]
//    return newData
//}
//
    func insertionSort <T> (inout data:[T]) {
        var newData = data as Array
        let count: Int = newData.count
        
        for (var i = 0; i < count; ++i) {
            var j = i
            if (j > 0) {
                
                // This is where I need to do the case switching
                
                let x = newData[j] as Int
                let y = newData[j - 1] as Int
                
                if x > y {
                    let z = newData[j]
                    newData[j] = newData[j - 1]
                    newData[j - 1] = z
                }
            }
        }
        data = newData
    }