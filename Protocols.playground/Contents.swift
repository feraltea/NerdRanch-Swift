//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func printTable(data: [[Int]]) {
    for row in data {
        //create an empty string 
        var out = ""
        
    for item in row {
        //append each item in this row to our string 
        out += " \(item) |"
        }
        
        //Done - print it!
        print(out)
    }
}
let data = [
    [30, 6],
    [1, 8],
    [50, 20]
]

printTable(data)

