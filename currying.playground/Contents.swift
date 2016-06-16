//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

//using the greetName function 

let personalGreeting = greetName("darrel", withGreeting: "hello, ")

print(personalGreeting)

func greetingForName(name: String) -> (String) -> String { //returns function that takes string that returns a string :0
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greeterFunction = greetingForName("Carl") //greeterFunction holds function with "Carl" within the scope of that function
let theGreeting = greeterFunction("hello, ")

//more convenient syntax 
func greeting(greeting: String)(name: String) -> String {
    return "\(greeting) \(name)"
}

let friendlyGreeting = greeting("hello, ")
let newGreeting = friendlyGreeting(name: "darrel")

struct Person {
    var firstName = "Rick"
    var lastName = "James"
    
    mutating func changeName(fn: String, ln: String) {
        firstName = fn
        lastName = ln
    }
}

var p = Person()
let changer = Person.changeName //not calling changename function, but rather assigning it to changer

//changer(&p) ("John", ln: "Smith")
//p.firstName

p.changeName("larry", ln: "david")
p.firstName
p.lastName












