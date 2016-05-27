//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func printGreeting() {
    print("waddup playground")
}

printGreeting()

//function with one parameter

//func printPersonalGreeting(name: String) {
//    print("hello \(name), welcome to your very own personal playground ")
//}

//printPersonalGreeting("darrel")

//function with two parameters (numerator/denominator)

//func divisionDescription(num: Int, den: Int) {
//    print("\(num) divided by \(den) is equal to \(num/den)")
//}
//
//divisionDescription(100, den: 10)

//writing same function but with all parameters visible outside function

//func divisionDescription(forNumerator num: Double, forDenominator den: Double) {
//    print("\(num) divided by \(den) is equal to \(num / den)")
//}

//divisionDescription(forNumerator: 200, forDenominator: 100)

//variadic parameter
func printPersonalGreeting(names: String...) {
    for name in names {
        print("Hello \(name), how goes it?")
    }
}

printPersonalGreeting("alex", "jim", "tyrone", "billy")

//default parameter values

//func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") {
//    
//    print("\(num) divided by \(den) is equal to \(num/den)\(punctuation)")
//}

//divisionDescription(forNumerator: 9, andDenominator: 3)
//divisionDescription(forNumerator: 10, andDenominator: 2, withPunctuation: "!")

//in-out paramaters

var error = "The request failed:"

func appendErrorCode(code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorString += " bad request"
    }
}
appendErrorCode(400, toErrorString: &error)

//function takes arguments of code and and toErrorString (errorString internal name) 
//checks if code is 400, if it is then the error string is concatenated with error.. the variable
//that is passed into the inout param toErrorString

//returning from a function 

func divisionDecription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num/den)\(punctuation)"
}

print(divisionDecription(forNumerator: 9, andDenominator: 3, withPunctuation: " bitch!"))

//nested functions and scope 

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}

areaOfTriangle(withBase: 3, andHeight: 5)

//multiple returns

func sortEvenOdds(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

//passed in 1 array, and returned 2 sorted (even, odd) 
//loop through numbers, check if even push to evens array if not push to odds array
//return both arrray 

//calling sortEvenOdds
let aBunchOfNumbers = [2,3,4,512,34,55,323,4,5,14]
let theSortedNumbers = sortEvenOdds(aBunchOfNumbers)

print("The even numbers are: \(theSortedNumbers.evens) and the odd numbers are: \(theSortedNumbers.odds)")

//optional return types 
func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(("Mike", nil, "Jones"))
if let theName = middleName {
    print(theName)
}

//exiting early from a function (using guard statements) 
//func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
//    guard let middleName = name.middle else {
//        print("Hey there!")
//        return
//    }
//    print("Hey \(middleName)")
//}
//
//greetByMiddleName(("Matt", "Danger", "Jones"))

//bronze challange: include where in guard statement to check if middle name is < 4 characters

//func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
//    let count = (name.middle)!.characters.count
//    guard let middleName = name.middle where count > 4 else {
//        print("hey there")
//        return
//    }
//    print ("yo \(middleName)")
//}

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle where (name.middle)!.characters.count > 4 else {
        print("yo dog")
        return
    }
    print("yo \(middleName)")
}

greetByMiddleName(("ty", "ja", "frith")) //rememember double parens :-( 

//silver challenge: function to sift out "beans" from a grocery list 

func beanSifter(groceryList: [String]) -> (beans: [String], other: [String]) {
  
    var beans = [String]()
    var other = [String]()
    
    for items in groceryList {
        if items.hasSuffix("beans") {
            beans.append(items)
        } else {
            other.append(items)
        }
    }
        return(beans, other)
}

beanSifter(["green beans", "milk", "carrots", "black beans"])



















