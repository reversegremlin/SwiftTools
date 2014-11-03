//
//  Utils.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 10/27/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Cocoa

func insertionSort<T: Comparable>(inout data: [T]) {

        let count: Int = data.count
        
        for (var i = 1; i < count; ++i) {
            var j = i
            while (j > 0) && data[j - 1] > data[j] {

                let z = data[j]
                data[j] = data[j - 1]
                data[j - 1] = z
                j--
                }
            }
    }


