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
    
    override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
    }
}


