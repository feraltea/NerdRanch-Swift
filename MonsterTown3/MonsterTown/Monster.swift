//
//  Monster.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name: String! //now requires initializer
    
    static let isTerrifying = true //static property at class level. EVERY Monster isTerrifying = true
    
    class var makeGnarlyNoise: String {
    return "the noise that a monster makes"
    }
    
    var victimPool: Int {
        get {
            return town?.population ?? 0 //if monster has assigned town then return the population of town. if not return 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool //creates var to hold population if monster type has town 
        }
    }
    
    
    required init?(town: Town?, monsterName: String) { //custom class initializer with required keyword
        
        if monsterName == "" {
            print("monster needs a name!")
            return nil
        }
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet")
        }
    }
}


