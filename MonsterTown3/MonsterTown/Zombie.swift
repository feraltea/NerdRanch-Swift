//
//  Zombie.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

class Zombie: Monster { //defines new type Zombie which inherits from the Monster type
    var walksWithLimp = true
    private(set) var isFallingApart = false //internal access to getter, private setter (setter can't be more visible than getter. if you leave off "internal" keyword compiler resorts to default of internal) :)
    
    override class var makeGnarlyNoise: String { //type property. every instance has this same property
        return "the sound a zombie makes"
    }
    
    //class func makeGnarlyNoise() -> String { //type method.. notice similarity to type property above
//     return "the sound a zombie makes"
//}

//    override func terrorizeTown() {
//        
//        if town?.population >= 10 {
//            town?.changePopulation(-10)
//        } else {
//            town?.population = 0
//            print("everyone is dead")
//        }
//        super.terrorizeTown()
//    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}























