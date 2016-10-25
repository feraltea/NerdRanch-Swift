//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//print(str)

func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0..<amount {
        paddingString += " "
    }
        return paddingString
}


//func printTable(data: [[Int]]) {
//    for row in data {
//        //create an empty string 
//        var out = ""
//        
//        //append each item in this row to our string 
//        for item in row {
//            out += " \(item) |"
//        }
//        //done, now print 
//        print(out)
//    }
//}

func printTable(rowLabels: [String], columnLabels: [String], data: [[Int]]) {
    //create an array of the width of each row label 
    let rowLabelWidths = rowLabels.map { $0.characters.count }
    
    //determine length of the longest row label
    guard let maxRowLabelWidth = rowLabelWidths.max() else {
        return
    }
    
    //create first row containing column headers
    var firstRow: String = padding(amount: maxRowLabelWidth) + " |"
    
    //also keep track of width of each column 
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.characters.count)
    }
    print(firstRow)
    
    for (i, row) in data.enumerated() {
        //pad the row label out so they are all the same length
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(amount: paddingAmount) + " |"
        
        //append each item in this row to our string
        for (j, item) in row.enumerated() {
            let itemString = " \(item) |"
            let paddingAmount = columnWidths[j] - itemString.characters.count
            out += padding(amount: paddingAmount) + itemString
        }
        //done, print
        print(out)
    }
}

//let rowLabels = ["Elliot", "Darlene", "Mr. Robot"]
//
//let columnLabels = ["Age", "Yrs of experience"]
//
//let data = [
//[30, 6],
//[40, 2],
//[50, 3],
//]

//printTable(rowLabels: rowLabels, columnLabels: columnLabels, data: data)

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department {
    let name: String
    var people = [Person]()
    
    init(name: String) {
        self.name = name
    }
    mutating func addPerson(person: Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.addPerson(person: Person(name: "Joe", age: 35, yearsOfExperience: 8))
department.addPerson(person: Person(name: "Frank", age: 33, yearsOfExperience: 12))
department.addPerson(person: Person(name: "Jerald", age: 24, yearsOfExperience: 2))






