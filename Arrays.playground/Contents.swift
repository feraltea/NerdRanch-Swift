//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var bucketList: Array<String>

//alternative declaration
//var bucketList: [String]

//var bucketList: [String] = ["learn C"]; //initialized

//using type inference to declare array 
var bucketList = ["learn C"]

bucketList.append("surf in Peru")
bucketList.append("hike PCT")
bucketList.append("own a primitive cabin")
bucketList.append("own a convertible")



bucketList.removeAtIndex(4)

print(bucketList.count)

//subscripting
print(bucketList[0...2])

//subscripting to append new information 
bucketList[2] += ", with a friend of course"

//replace item in array 
//bucketList[0] = "whatever you want"

print(bucketList)

//using loop to append items from one array to another 

var newItems = [
                "fly a plane",
                "travel to Africa",
                "Travel to Asia",
                "surf in Fiji"
                ]

//for item in newItems {
//    bucketList.append(item)
//}

//using addition/assignment operator instead
bucketList += newItems

//inserting a new item at specfied index
bucketList.insert("this is fun", atIndex: 4)

var friendsBucketList = bucketList

//checking array equality
let equal = (friendsBucketList == bucketList)

//immutable array
let pastContinentsTraveled = ["Cetnral America", "South America", "Asia", "North America"]


//bronze challenge: use docs to find var defined on Array type that will tell you wuther toDoList has any elements in it
var toDoList = ["Take out garbage", "pay bills", "cross off finished items"]

toDoList.count

//silver challenge: reverse order of toDoList
var testArray = [String]

for var i = toDoList.count - 1; i >= 0 ; i -= 1 {
  testArray.append(toDoList[i])
}

toDoList = testArray

print(toDoList)



//toDoList = toDoList.reverse()























