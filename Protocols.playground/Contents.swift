//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//print(str)

func printTable(data: [[Int]]) {
    for row in data {
        //create an empty string 
        var out = ""
        
        //append each item in this row to our string 
        for item in row {
            out += " \(item) |"
        }
        //done, now print 
        print(out)
    }
}

let data = [
[30, 6],
[40, 2],
[50, 3],
]

printTable(data: data)


