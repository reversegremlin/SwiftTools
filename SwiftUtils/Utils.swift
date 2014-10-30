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
