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


for nums in 1...1000 {
    let ran = Int(arc4random() % 1000)
    rArray.append(ran)
}

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

var randStrings = ["monkey", "donkey", "spider", "orangutan", "shark", "bee", "fly", "tiger", "lion", "bear"]


mergeSort(&rArray)



for thing in rArray {
    println(thing)
}

insertionSort(&randStrings)


for thing in randStrings {
    println(thing)
}


