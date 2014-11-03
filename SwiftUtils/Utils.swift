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

func insertionSort (inout data:[String]) {
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




func mergeSort (inout data:[Int]) {
    
    var aux: [Int] = data
    if data.count > 0 {
        mergeSort(&data, &aux, 0, data.count-1)
    }
}

func mergeSort (inout data:[Int], inout aux:[Int], lo: Int, hi: Int) {
    
    if (hi <= lo) {
        return
    }
    
    let mid: Int = lo + (hi - lo) / 2
    mergeSort(&data, &aux, 0, mid)
    mergeSort(&data, &aux, mid + 1, hi)
    mergeInts(&data, &aux, lo, mid, hi)
}

func mergeInts (inout data:[Int], inout aux:[Int], lo: Int, mid: Int, hi: Int) {

    println("lo is \(lo)")
    println("mid is \(mid)")
    println("hi is \(hi)")
    
//    TopDownMerge(A[], iBegin, iMiddle, iEnd, B[])
//        {
//            i0 = iBegin, i1 = iMiddle;
//            
//            // While there are elements in the left or right runs
//            for (j = iBegin; j < iEnd; j++) {
//                // If left run head exists and is <= existing right run head.
//                if (i0 < iMiddle && (i1 >= iEnd || A[i0] <= A[i1]))
//                B[j] = A[i0];
//                i0 = i0 + 1;
//                else
//                B[j] = A[i1];
//                i1 = i1 + 1;    }
//            
    
    var iLo = lo
    var iMid = mid
    var j: Int
    
    for (j = iLo; j < hi; j++) {
     
        if (iLo < mid) {
            var aLo: Int
            var aMid: Int
            
            if iMid >= hi {
            aLo = aux[iLo]
            aMid = aux[iMid]
            } else if (aLo <= aMid) {
            data[j] = aux[iLo]
            iMid++ } else {
            data[j] = aux[iMid]
            iMid++
        }
        }
    }
}
    
    
//    int i = lo;
//    int j = mid+1;
//    
//    for (int k = lo; k <= hi; k++) {
//        if (i > mid) {
//            larray[k] = laux[j++];
//        } else if (j > hi) {
//            larray[k] = laux[i++];
//        } else if ([laux[j] compare:laux[i]] < 0) {
//            larray[k] = laux[j++];
//        } else {
//            larray[k] = laux[i++];
//        }
//    }
//
//    var i: Int = lo
//    var j: Int = mid+1
//    
////    var _data: [Int] = data
////    var _aux: [Int] = data
//    var k: Int
//    
//    for (k = lo; k <= hi; k++) {
//        
//        if lo == 0 && hi == 4 {
//            println("stop")
//        }
//        if i > mid {
//            println(" swapping \(data[k]) with \(aux[j])")
//            
//            data[k] = aux[j++]
//        } else if j > hi {
//            println(" swapping \(data[k]) with \(aux[i])")
//
//            data[k] = aux[i++]
//        } else if aux[j] < aux[i] {
//            println(" swapping \(data[k]) with \(aux[j])")
//
//            data[k] = aux[j++]
//        } else {
//            println(" swapping \(data[k]) with \(aux[i])")
//
//            data[k] = aux[i++]
//        }
//    }
////    data = _data
////    aux = _aux


//    
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


