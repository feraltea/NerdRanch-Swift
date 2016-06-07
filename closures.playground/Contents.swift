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
//let volunteersSorted = volunteerCounts.sort({i, j in i < j})

let volunteersSorted = volunteerCounts.sort { $0 < $1 }
volunteersSorted

//functions as return types 
//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
//        return toLights + lightsToAdd
//    }
//    return buildRoads
//}
//
//var stopLights = 4
//let townPlan = makeTownGrand()
//stopLights = townPlan(4, stopLights)
//
//print("knowhere USA has \(stopLights) stoplights")

func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget){
    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
        return toLights + lightsToAdd
    }
    return buildRoads
} else {
    return nil
    }
}

func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var stopLights = 4

if let townPlan = makeTownGrand(10001, condition: evaluateBudget) {
    stopLights = townPlan(4, stopLights)
}

print("knowhere USA has \(stopLights) stoplights")

//closures capture values 
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    
    return growthTracker
    
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)
growBy500() //each call increases number by 500
growBy500()
growBy500()

currentPopulation += growBy500() //current pop + the 2000 from 4 growBy500 calls 

//closures are reference types























