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


















