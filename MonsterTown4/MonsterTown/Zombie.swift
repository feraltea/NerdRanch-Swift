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
    
    class func makeGnarlyNoise() -> String { //type method uses class keyword
        return "the sound a zombie makes"
    }
    
    override func terrorizeTown() {
        
        if town?.population >= 10 {
            town?.changePopulation(-10)
        } else {
            town?.population = 0
            print("everyone is dead")
        }
        super.terrorizeTown()
    }
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}



















