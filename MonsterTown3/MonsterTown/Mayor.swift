//
//  Mayor.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/20/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

struct Mayor {
    
    private var anxietyLevel = 0
    
    mutating func issueStatement() {
        print("I'm deeply saddened by this tragedy")
        anxietyLevel += 1
    }
}




