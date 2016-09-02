//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//create helper function to add padding

func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0 ..< amount {
        paddingString += " "
    }
    return paddingString
}


// func to take array of arrays and prints numbers in a table

func printTable(rowLabels: [String], data: [[Int]]) {
    
    //create an array of the width of each row label
    let rowLabelWidths = rowLabels.map { $0.characters.count }
    
    //determine length of longest row label 
    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }
    
    for (i, row) in data.enumerate() {
        //pad the tow label out so they are all the same length
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(paddingAmount) + " |"
  
    
    //append each item in this row to our string
        for item in row {
            out += " \(item) |"
        }
        
        //done, now print it
        print(out)
    }
}


let rowLabels = ["Joe", "Tim", "Ragnar"]
let data = [
    [30, 6],
    [40, 18],
    [50, 20]
]

printTable(rowLabels, data: data)



