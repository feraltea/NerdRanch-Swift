//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var volunteerCounts = [1,3,40,32,2,53,77,13]

//closure syntax
//func sortAscending(i: Int, j: Int) -> Bool {
//    return i < j //smallest to largest
//}
//
//let volunteersSorted = volunteerCounts.sort(sortAscending)
//
//func sortDescending(i: Int, j: Int) -> Bool {
//    return j < i //largest to smallest
//}
//
//let volunteersSortedDescending = volunteerCounts.sort(sortDescending)

//closure expression syntax (refactor previous into closure expression) 
//let volunteersSorted = volunteerCounts.sort({
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//taking advantage of type inference to simplify further
let volunteersSorted = volunteerCounts.sort({i, j in i < j})






