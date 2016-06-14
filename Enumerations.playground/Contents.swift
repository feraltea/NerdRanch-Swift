//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum TextAlignment: Int {
    case left = 10
    case right = 20
    case center = 30
    case justify = 40
}

//var alignment: TextAlignment = TextAlignment.left

//var alignment = TextAlignment.left //compiler can infer the type still 

var alignment = TextAlignment.justify
alignment

//alignment = .right //can omit the type, again compiler can infer

alignment

//type inference when comparing variables 

//if alignment == .right {
//    print("we should right-align the text, yo!")
//}

//swtiching to switch 

//switch alignment { //remember that swtich statments must be exhaustive
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
//case .center:
//    print("center aligned")
//}
//
////maybe include default?
//
//switch alignment {
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
//default:
//    print("center aligned")
//}

switch alignment {
    case .left:
        print("left aligned")
    case .right:
        print("right aligned")
    case .center:
        print("center aligned")
    case .justify:
        print("justified bitch!")
}

//raw value enumerations

print("left has a raw value of \(TextAlignment.left.rawValue)")
print("right has a raw value of \(TextAlignment.right.rawValue)")
print("center has a raw value of \(TextAlignment.center.rawValue)")
print("justify has a raw value of \(TextAlignment.justify.rawValue)")

print("the alignment var has a raw value of \(alignment.rawValue)") //raw value of justify 

//create a raw value

let myRawValue = 20

//try to convert the value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    //conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    //conversion fails
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String { //remember to capitalize enums
    case swift
    case ObjectiveC
    case C
    case Cpp
    case Jave
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("my favorite programming language is \(myFavoriteLanguage.rawValue)")

//methods

enum LightBulb { //remember to capitalize enum names damnit!
    case on
    case off

func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
    switch self {
    case .on:
        return ambient + 150
        
    case .off:
        return ambient
        }
    }
    mutating func toggle() {  //need to add mutating in order to have method change self
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var newBulb = LightBulb.on  //new instance of LightBulb type
let ambientTemperature = 80.0

var bulbTemperature = newBulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the new bulbs temperature is \(bulbTemperature)")

newBulb.toggle()

bulbTemperature = newBulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulbs temperature is now \(bulbTemperature)") //bulb is off so just ambient temp :)

//associated values 

//enum ShapeDimensions {
//    //Point has no associated value - it's dimensionless
//    case Point
//    //squares associated value is the legnth of one side
//    case Square(Double)
//    
//    //rectangles associated value defines its width and height 
//    case Rectangle(width: Double, height: Double)
//    
//    func area() -> Double { //function to return area for either shape
//        switch self {
//            case Point:
//                return 0
//            case let .Square(side):
//                return side * side
//            case let .Rectangle(width: w, height: h):
//                return w * h
//        }
//    }
//}

//create instance of each enum with associated values
var squareShape = ShapeDimensions.Square(10.0)
var rectangleShape = ShapeDimensions.Rectangle(width: 5, height: 10)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectangleShape.area())")

var pointShape = ShapeDimensions.Point
print("point's area = \(pointShape.area())") //no area, returns 0 as expected 

//RECURSIVE ENUMERATIONS :0 

//problem with the FamilyTree below is infinite recursion b/c compiler needs to know how much memory to allocate (heaviest case). Can't though b/c of FamilyTree within FamilyTree

//enum FamilyTree {
//    case NoKnownParents
//    case OneKnownParent(name: String, ancestors: FamilyTree)
//    case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
//        mothername: String, motherAncestors: FamilyTree)
//}

//introduce the "indirect" keyword that essentially allows for pointers to work under the hood.. this is all you need to do to allow this to work. stores a pointerto associated data putting it somewhere else in memory rather than making the instance of FamilyTree big enough to hold all the data.

//indirect enum FamilyTree {
//    case NoKnownParents
//    case OneKnownParent(name: String, ancestors: FamilyTree)
//    case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
//        mothername: String, motherAncestors: FamilyTree)
//}

//don't need to mark entire enum as indirect, can instead mark individual cases that require it

enum FamilyTree {
    case NoKnownParents
    indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        mothername: String, motherAncestors: FamilyTree)
}

//creating a family tree

let fredAncestors = FamilyTree.TwoKnownParents(fatherName: "fred sr", fatherAncestors: .OneKnownParent(name: "Beth", ancestors: .NoKnownParents), mothername: "Marsha", motherAncestors: .NoKnownParents)

//bronze challenge
//add a perimter() method to ShapeDimensions enum

enum ShapeDimensions {
    //Point has no associated value - it's dimensionless
    case Point
    //squares associated value is the legnth of one side
    case Square(Double)
    
    //rectangles associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double { //function to return area for either shape
        switch self {
        case Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
    func perimeter() -> Double {
        switch self {
        case Point:
            return 0.0
        case let .Square(side):
            return side * 4
        case let .Rectangle(width: w, height: h):
            return (2 * w) + (2 * h)
        }
    }
}

var radRectangle = ShapeDimensions.Rectangle(width: 2.0, height: 4.0)

radRectangle.perimeter()
radRectangle.area()

//silver challenge 

























