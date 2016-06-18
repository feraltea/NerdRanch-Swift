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
    let region = "South" //read-only property
    var population = 5000 //this is a property.. just something that stores data. stored property that can be read and set
    var numberOfStoplights = 10
    
    enum Size {    //cannot be used outside of Town struct
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {  //computed property
        get { //read only b/c we want to calculate on each instance's population and return proper Size type (small, med, lg) 
        switch self.population {
        case 0...1000:
            return Size.Small
        case 1001...10000:
            return Size.Medium
        default:
            return Size.Large
        }
    }
}
    func printTownDescription() {
        print("Population is \(population) and there are \(numberOfStoplights) stoplights")
    }
    
    mutating func changePopulation(amount: Int) { //changes town information so needs to be mutating
        population += amount
    }
}









