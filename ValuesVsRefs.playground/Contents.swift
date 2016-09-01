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

struct Pantheon {
    let chiefGod: GreekGod
    let dateCreated = NSDate()
}

let pantheon = Pantheon(chiefGod: hecate)

let zeus = GreekGod(name: "Zeus")

zeus.name = "zeus jr"
zeus.name

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "bolleli"
greekPantheon.chiefGod.name

greekPantheon.dateCreated

let testPantheon = Pantheon(chiefGod: hecate)
testPantheon.chiefGod.name
testPantheon.dateCreated

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]

let godsCopy = gods
gods.last?.name = "Jupiter" //last refers to the last element in an array, optional here b/c array could be empty
gods
godsCopy





