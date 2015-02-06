//
//  Quick.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 11/6/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Foundation

var comparisons = 0

func quickSortFirstElement (inout data:[Int], lo: Int, hi: Int) {
  if lo < hi {
    var p = partitionFirst(&data, lo, hi)
    comparisons += ((p - 1) - lo)
    quickSortFirstElement(&data, lo, p - 1)
    comparisons += (hi - (p + 1))
    quickSortFirstElement(&data, p + 1, hi)
  }
}

func quickSortLastElement (inout data:[Int], lo: Int, hi: Int) {
  if lo < hi {
    var p = partitionLast(&data, lo, hi)
    comparisons += ((p - 1) - lo)
    quickSortLastElement(&data, lo, p - 1)
    comparisons += (hi - (p + 1))
    quickSortLastElement(&data, p + 1, hi)
  }
}

func swap(inout arr: [Int], a: Int, b: Int) {
  var temp = arr[a]
  arr[a] = arr[b]
  arr[b] = temp
}

func partitionFirst (inout data:[Int], lo: Int, hi: Int) ->Int {
  var pivotValue = data[lo]
  var j = lo + 1
  var storeIndex = lo + 1

  for i in j...hi {
    if data[i] < pivotValue {
      swap(&data, i, storeIndex)
      storeIndex += 1
    }
  }
  swap(&data, lo, storeIndex-1)
  return storeIndex-1
}

func partitionLast (inout data:[Int], lo: Int, hi: Int) ->Int {
  var pivotValue = data[hi]
  var j = lo
  var storeIndex = lo

  for i in j...hi {
    if data[i] < pivotValue {
      swap(&data, i, storeIndex)
      storeIndex += 1
    }
  }
  swap(&data, storeIndex , hi)

  return storeIndex
}

func isSorted (data: [Int]) ->Bool {
  for var i = 1; i < data.count; i++ {
    if data[i] < data[i-1] { return false }
  }
  return true
}

func getPivotIndex (first: Int, middle: Int, last: Int) -> Int {
  return 0
}

func quickSortFirstElement (inout data:[Int]) {
  if data.count > 0 {
    quickSortFirstElement(&data, 0, data.count-1)
  }
  println(isSorted(data))
  println("total \(comparisons)")
}

func quickSortLastElement (inout data:[Int]) {
  if data.count > 0 {
    quickSortLastElement(&data, 0, data.count-1)
  }
  println(isSorted(data))
  println("total \(comparisons)")
}


