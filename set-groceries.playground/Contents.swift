//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var groceryBag = Set<String>()

groceryBag.insert("apples")
groceryBag.insert("bananas")
groceryBag.insert("beer")
groceryBag.insert("avocados")

for food in groceryBag {
    print(food)
}

//alternative way to create
//var groceryBag = Set(["blah", "blah", "blah"])

//another way to declare
//var groceryBag: Set = ["blah", "blah", "blah"]

//contains bananas?
let hasBananas = groceryBag.contains("bananas")

//unions 
let friendsGroceryBag: Set = ["bananas", "cereal", "wine", "onions"]
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//intersects 
let roomMatesGroceryBag: Set = ["apples", "bananas", "toothpaste", "whiskey"]
let itemsToReturn = commonGroceryBag.intersect(roomMatesGroceryBag)

//disjoint
let yourSecondBag: Set = ["berries", "yogurt"]
let roomMatesSecondBag: Set = ["grapes", "honey"]

let disjoint = yourSecondBag.isDisjointWith(roomMatesSecondBag)

//bronze challenge
var myCities: Set = ["atlanta", "chicago", "jacksonville", "new york", "san francisco"]

var yourCities: Set = ["chicago", "san francisco", "jacksonville"]

//method to check if myCities is superset of yourCities.. yourCities is subset of myCities
yourCities.isSubsetOf(myCities)

//silver challenge

//method to join two sets but NOT create another instance
myCities.unionInPlace(yourCities)

//method to intersect two sets but NOT create another instance
myCities.intersectInPlace(yourCities)





