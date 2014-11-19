//
//  Quick.swift
//  SwiftUtils
//
//  Created by Nadia Morris on 11/6/14.
//  Copyright (c) 2014 Nadia Morris. All rights reserved.
//

import Foundation

func quickSort <T: Comparable> (inout data:[T]) {
    if data.count == 0 {

    }
}

//+ (NSArray *)sort:(NSArray *)array {
//    if ([array count] > 0) {
//        id object = [array objectAtIndex:0];
//        if ([object isKindOfClass:[NSString class]]) {
//            array = [NSArray arrayWithArray:[self stringSort:array lo:0 hi:(int)[array count] -1]];
//        } else if ([object isKindOfClass:[NSNumber class]]) {
//            array = [NSArray arrayWithArray:[self numberSort:array lo:0 hi:(int)[array count] -1]];
//        }
//    }
//    return array;
//    }
//
//        + (NSArray *) numberSort:(NSArray *)array lo:(int)lo hi:(int)hi {
//            if (hi <= lo) {
//                return array;
//            }
//            int lt = lo;
//            int gt = hi;
//            NSNumber *num = array[lo];
//            int i = lo;
//            while (i <= gt) {
//                int cmp = [array[i] compare:num];
//                if (cmp < 0) {
//                    array = [Utilities exch:lt++ withObject:i++ in:array];
//                } else if (cmp > 0) {
//                    array = [Utilities exch:i withObject:gt-- in:array];
//                } else {
//                    i++;
//                }
//            }
//            array = [self numberSort:array lo:lo hi:lt-1];
//            array = [self numberSort:array lo:gt+1 hi:hi];
//            return array;
//        }
//        
//@end
