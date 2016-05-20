//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//mutable dictionary literal syntax
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

//accessing and modifying dictionary 
print("I have rated \(movieRatings.count) movies.")

let darkoRating = movieRatings["Donnie Darko"]

//modify value in dictionary 
movieRatings["Dark City"] = 5
movieRatings

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")

if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}


//adding and removing values 
movieRatings["Pulp Fiction"] = 5

movieRatings.removeValueForKey("Dark City")

//can also remove value by simply setting it to nil 
//movieRatings["Dark City"] = nil 
//same strategy but doesnt return optional with removed value

//Looping
