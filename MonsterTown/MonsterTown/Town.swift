//
//  Town.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

//Instance methods
//make a function to print the town description

struct Town {
    var population = 666000
    var numberOfStoplights = 10
    
    func printTownDescription() {
        print("Population is \(population) and there are \(numberOfStoplights) stoplights")
    }
    
    mutating func changePopulation(amount: Int) { //changes town information so needs to be mutating
        population += amount
    }
}







