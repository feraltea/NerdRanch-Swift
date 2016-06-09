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
let anotherGrowBy500 = growBy500
anotherGrowBy500() //total growth now 2500 but has no impact on currentPopulation

makeGrowthTracker(forGrowth: 500)

currentPopulation += growBy500()

currentPopulation

var newCityToTrack = 40000
let growBy10000 = makeGrowthTracker(forGrowth: 10000)
newCityToTrack += growBy10000()

currentPopulation //notice that population of previous is unchanged 

//functional programming 

//swift adopts
    //first-class functions - same as any other type - functions can be passed as arguments
    //pure functions -  (put in same input - expect same output)
    //immutatbilty - mutability de-emphasized - hard to reason with data that may change 
    //strong typing - increases runtime safety 

//higher order functions - take at least one function as an input (map, filter, reduce/combine)

let precintPopulations = [5000, 10000, 15000]

let projectedPopulations = precintPopulations.map { //takes array (does something) and returns new array :)
    (population: Int) -> Int in                     //.map applies function at each index
        return population * 2
}

projectedPopulations

let bigProjections = projectedPopulations.filter { //filters array for > 1000 - returns new array
    (projection: Int) -> Bool in
    return projection > 1000
}

bigProjections

//let totalProjection = projectedPopulations.reduce(0) {
//    (accumulatedProjection: Int, precintProjection: Int) -> Int in
//    return accumulatedProjection + precintProjection
//}

//totalProjection

//gold challenge - one line the totalProjection function 

//var totalProjection = precintPopulations.reduce(0, {})

var totalProjection = 0

//for pop in precintPopulations {
//    totalProjection = totalProjection + pop  //"naive" method
//}
//
//totalProjection

totalProjection = precintPopulations.reduce(0,combine: {$0 + $1}) // cleannn

totalProjection





































