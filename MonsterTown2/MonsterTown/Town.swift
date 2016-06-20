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
    static let region = "South" //read-only property, static keyword means it's a type property rather than instance 
    var population = 5000 { //this is a property.. just something that stores data. stored property that can be read and set
        didSet(oldPopulation) { //property observer that responds when population changes
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
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









