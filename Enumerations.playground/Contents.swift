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
}

//create instance of each enum with associated values
var squareShape = ShapeDimensions.Square(10.0)
var rectangleShape = ShapeDimensions.Rectangle(width: 5, height: 10)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectangleShape.area())")

var pointShape = ShapeDimensions.Point
print("point's area = \(pointShape.area())") //no area, returns 0 as expected 

//RECURSIVE ENUMERATIONS :0 



































