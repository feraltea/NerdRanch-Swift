//
//  main.swift
//  MonsterTown
//
//  Created by Tyler Frith on 6/14/16.
//  Copyright © 2016 tfrth. All rights reserved.
//

import Foundation

//print("Hello, World!")

//create new instance of Town 

var myTown = Town()

//print("The population of my town is \(myTown.population) and there are \(myTown.numberOfStoplights) stoplights")

//let's instead use new instance method 
myTown.printTownDescription() //this will still have original population b/c executes from top to bottom

myTown.changePopulation(500)

myTown.printTownDescription() //this will have new population 

let genericMonster = Monster() //create instance of Monster
genericMonster.town = myTown
genericMonster.terrorizeTown()






