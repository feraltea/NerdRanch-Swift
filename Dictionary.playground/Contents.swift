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
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}

//loop to iterate through movieRating's leys and log each movie
for movie in movieRatings.keys {
    print("user has rated \(movie)")
}

//immutable dictionary
let favoriteAlbums = ["Sturgill Simpson": "Metamodern sounds in country music", "White Denim": "Corsicana Lemonade"]

//translating to an array 
let watchedMovies = Array(movieRatings.keys)

//silver challenge 

var oregonCounties = ["multnomah": [435345, 345345, 345345, 345345, 5435345, 34534534, 5765, 567567, 567567], "washington": [324, 555, 666, 345345, 45345], "clark": [3424, 23423, 23423, 2342]]

//now log only the zip codes
var onlyCodes = Array(oregonCounties.values)

print("Oregon has the following zip codes: \(onlyCodes)")





