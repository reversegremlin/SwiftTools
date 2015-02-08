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

func quickSortMedianOfThree (inout data:[Int], lo: Int, hi: Int) {
  if lo < hi {
    var p = partition(&data, lo, hi)
    comparisons += ((p - 1) - lo)
    quickSortMedianOfThree(&data, lo, p - 1)
    comparisons += (hi - (p + 1))
    quickSortMedianOfThree(&data, p + 1, hi)
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
  var storeIndex = lo

  for i in j...hi {
    if data[i] < pivotValue {
      swap(&data, i, storeIndex+1)
      storeIndex += 1
    }
  }
  swap(&data, lo, storeIndex)
  return storeIndex
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

func partition (inout data:[Int], lo: Int, hi: Int) -> Int {

  var pivotIndex: Int
  var pivotTest = medianOfThree(&data, lo, hi)
  if pivotTest == 1 {
    pivotIndex = lo
  } else if pivotTest == 3 {
    pivotIndex = hi
  } else {
    pivotIndex = data[data.count/2]
  }

  var pivotValue = data[pivotIndex]
  var j = lo + 1

  for i in j...hi {
    if data[i] < pivotValue {
      swap(&data, i, pivotIndex)
      pivotIndex += 1
    }
  }
  swap(&data, pivotIndex, hi-1)
  return pivotIndex
}

func isSorted (data: [Int]) ->Bool {
  for var i = 1; i < data.count; i++ {
    if data[i] < data[i-1] { return false }
  }
  return true
}


func medianOfThree(inout data:[Int], lo: Int, hi: Int) -> Int {
  var middle = data.count/2

  if data[lo] > data[middle] {
    swap(&data, lo, middle)
  }

  if data[lo] > data[hi] {
    swap(&data, lo, hi)
  }

  if data[middle] > data[hi] {
    swap(&data, middle, hi)
  }
  swap(&data, middle, hi-1)
  return data[hi-1]
}

func getPivotIndex (data:[Int]) -> Int {
  var first = data.first
  var middle = data[data.count/2]
  var last = data.last

  if first > middle {
    if middle > last {
      return 2
    } else if first > last {
      return 3
    } else {
      return 1
    }
  } else {
    if first > last {
      return 1
    } else if middle > last {
      return 3
    } else {
      return 2
    }
  }
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

func quickSortMedianOfThree (inout data:[Int]) {
  if data.count > 0 {
    quickSortMedianOfThree(&data, 0, data.count-1)
  }
  println(isSorted(data))
  println("total \(comparisons)")
}


/*


public class AnotherQuickSort {
private long[] data;

private int len;

public AnotherQuickSort(int max) {
data = new long[max];
len = 0;
}

public void insert(long value) {
data[len] = value; // insert and increment size
len++;
}

public void display() {
System.out.print("Data:");
for (int j = 0; j < len; j++)
System.out.print(data[j] + " ");
System.out.println("");
}

public void quickSort() {
recQuickSort(0, len - 1);
}

public void recQuickSort(int left, int right) {
int size = right - left + 1;
if (size <= 3) // manual sort if small
manualSort(left, right);
else // quicksort if large
{
long median = medianOf3(left, right);
int partition = partitionIt(left, right, median);
recQuickSort(left, partition - 1);
recQuickSort(partition + 1, right);
}
}

public long medianOf3(int left, int right) {
int center = (left + right) / 2;
// order left & center
if (data[left] > data[center])
swap(left, center);
// order left & right
if (data[left] > data[right])
swap(left, right);
// order center & right
if (data[center] > data[right])
swap(center, right);

swap(center, right - 1); // put pivot on right
return data[right - 1]; // return median value
}

public void swap(int dex1, int dex2) {
long temp = data[dex1];
data[dex1] = data[dex2];
data[dex2] = temp;
}

public int partitionIt(int left, int right, long pivot) {
int leftPtr = left; // right of first elem
int rightPtr = right - 1; // left of pivot

while (true) {
//       find bigger
while (data[++leftPtr] < pivot)
;
//       find smaller
while (data[--rightPtr] > pivot)

;
if (leftPtr >= rightPtr) // if pointers cross, partition done
break;
else
// not crossed, so
swap(leftPtr, rightPtr); // swap elements
}
swap(leftPtr, right - 1); // restore pivot
return leftPtr; // return pivot location
}

public void manualSort(int left, int right) {
int size = right - left + 1;
if (size <= 1)
return; // no sort necessary
if (size == 2) { // 2-sort left and right
if (data[left] > data[right])
swap(left, right);
return;
} else // size is 3
{ // 3-sort left, center, & right
if (data[left] > data[right - 1])
swap(left, right - 1); // left, center
if (data[left] > data[right])
swap(left, right); // left, right
if (data[right - 1] > data[right])
swap(right - 1, right); // center, right
}
}

public static void main(String[] args) {
int maxSize = 16;
AnotherQuickSort arr = new AnotherQuickSort(maxSize);

for (int j = 0; j < maxSize; j++) { // random numbers
long n = (int) (java.lang.Math.random() * 99);
arr.insert(n);
}
arr.display();
arr.quickSort();
arr.display();
}
}



*/


