//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var playgroundGreeting = str

playgroundGreeting += "! sup yo"

str

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name





