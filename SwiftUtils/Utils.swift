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


func mergeSort <T: Comparable> (inout data:[T]) {
    
    if data.count == 0 {
        return
    }

    let lo: Int = 0
    let hi: Int = data.count-1
    var aux = [T]()

    msort(&data, &aux, 0, hi)


}

func msort <T: Comparable> (inout data:[T], inout aux:[T], lo: Int, hi: Int) {

    if (hi <= lo) {
        return
    }

    let mid = lo + (hi - lo) / 2;
    msort(&data, &aux, lo, mid);
    msort(&data, &aux, mid + 1, hi);
    merge(&data, &aux, lo, mid, hi);

}


func merge <T: Comparable> (inout data:[T], inout aux:[T], lo: Int, mid: Int, hi: Int) {

    var foo: Int = aux.count

    if aux.count == 0 {
        for value in data {
            aux.append(value)
        }
    } else {
        for (index, value) in enumerate(data) {
            aux[index] = data[index]
        }
    }

    var i = lo
    var j = mid + 1

    for (var k = lo; k <= hi; k++) {
        if      (i > mid)           { data[k] = aux[j++] }
        else if (j > hi)            { data[k] = aux[i++] }
        else if (aux[j] < aux[i])   { data[k] = aux[j++] }
        else                        { data[k] = aux[i++] }
    }
}