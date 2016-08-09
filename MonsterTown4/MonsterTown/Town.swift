//
//  Town.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

struct Town {
    
    let region: String
    
    var population: Int {
        didSet(oldPopulation) {
            print("the population has changed to \(population) from \(oldPopulation)")
        }
    }
    
    var numberOfStoplights: Int
    
    //creation of custom initializer
    init(region: String, population: Int, stopLights: Int) {
        self.region = region
        self.population = population
        numberOfStoplights = stopLights
    }
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(changePopBy: Int) {
        population += (population - changePopBy)
    }
    
}











