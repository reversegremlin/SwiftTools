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

var i = 1
for nums in 1...1000 {
//    let ran = Int(arc4random() % 1000)

    rArray.append(i++)
}

func shuffle<C: MutableCollectionType where C.Index == Int>(var list: C) -> C {
  let count = countElements(list)
  for i in 0..<(count - 1) {
    let j = Int(arc4random_uniform(UInt32(count - i))) + i
    swap(&list[i], &list[j])
  }
  return list
}

var nArray = shuffle(rArray)


//NSString *dictionary = [NSString stringWithContentsOfFile: @"/usr/share/dict/words"
//encoding: NSUTF8StringEncoding
//error: nil];
//
//NSArray *words = [NSArray arrayWithArray:[dictionary componentsSeparatedByString:@"\n"]];
//
//_randomStrings = [[NSMutableArray arrayWithCapacity:_N] mutableCopy];
//
//for (int i = 0; i < _N; ++i) {
//    int r = arc4random_uniform((int)[words count]);
//    [_randomStrings addObject:words[r]];
//}

//var randStrings = ["monkey", "donkey", "spider", "orangutan", "shark", "bee", "fly", "tiger", "lion", "bear"]


//Users/hexjunky/Downloads

var text = String(contentsOfFile:"/Users/hexjunky/Downloads/QuickSort.txt", encoding: NSUTF8StringEncoding, error: nil)!
var stringArray = text.componentsSeparatedByString("\n")
var intArray = [Int]()

for intStr in stringArray {
  let item: String = intStr.stringByReplacingOccurrencesOfString("\r", withString: "", options: nil, range: nil)
  if let intVal = item.toInt() {
    intArray.append(intVal)
  }
}



//quickSortLastElement(&intArray)
quickSortFirstElement(&intArray)

//quickSort(&intArray)
//mergeSort(&nArray)
for thing in intArray {
    println(thing)
}

//insertionSort(&randStrings)
//
//
//for thing in randStrings {
//    println(thing)
//}


