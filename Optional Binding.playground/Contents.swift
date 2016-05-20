//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var errorCodeString: String?

errorCodeString = "404"

if var theError = errorCodeString {
    theError += " 5"
    print(theError)
} else {
    print("fuck")
}


if let theError = errorCodeString {
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")  //like to avoid nested if let calls "pyramid of doom"
    }
}

//we would rather do it this way, unwrapping two optionals in a single line
if let theError = errorCodeString, errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)")
}

//using where clause to focus on specific error code 
if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
    print("\(theError): \(errorCodeInteger)")
} else {
    print("the error code is actually \(errorCodeString)")
}


//example implicitly unwrapped optional 
var hereItIs: String!
hereItIs = "something great"
print(hereItIs)

//optional chaining 
var errorDescription: String?

if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
    errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.")
}

var upCaseErrorDescription = errorDescription?.uppercaseString
errorDescription

//modifying an optional in place 
upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN, BRUH.")
upCaseErrorDescription

//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//} else {
//    description = "no error"
//}

//can accomplish same task as above but use nil coalescing operator instead 
let description = errorDescription ?? "no error"

//silver challenge: forced unwrapping of nil optional to examine error 
var somethingSweet: String?
//var somethingSweeter = somethingSweet!
//somethingSweet!







