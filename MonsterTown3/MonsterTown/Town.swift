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
    var mayor = Mayor() //creates new instance of Mayor "mayor" 
    
    let region: String
    
    var population: Int {
        didSet(oldPopulation) { //property observer that responds when population changes
        print("The population has changed to \(population) from \(oldPopulation)")
                
    }
}
    
    var numberOfStoplights: Int
    
    init(region: String, population: Int, stoplights: Int) { //standard initializer
        self.region = region
        self.population = population
        numberOfStoplights = stoplights 
    }
    
    init(population: Int, stoplights: Int) { //initializer using delegation
        self.init(region: "N/A", population: population, stoplights: stoplights) //calls other initializer 
    }
    
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
        print("Population is \(population) and there are \(numberOfStoplights) stoplights - Region: \(region)")
    }
    
    mutating func changePopulation(amount: Int) { //changes town information so needs to be mutating
        population += amount
    }
}









