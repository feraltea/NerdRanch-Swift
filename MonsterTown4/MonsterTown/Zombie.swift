//
//  Zombie.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

class Zombie: Monster { //defines new type Zombie which inherits from the Monster type
    
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("this zombie has a bad fucking knee, yo")
        }
    }
    
    class func makeGnarlyNoise() -> String { //type method uses class keyword
        return "the sound a zombie makes"
    }
    
    final override func terrorizeTown() {
        
        if town?.population >= 10 {
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
    }
}



















