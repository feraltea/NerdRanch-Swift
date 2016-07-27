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

var myTown = Town(population: 1000, numberOfStoplights: 6)

//print("The population of my town is \(myTown.population) and there are \(myTown.numberOfStoplights) stoplights")

//let's instead use new instance meth
myTown.printTownDescription() //this will still have original population b/c executes from top to bottom

myTown.changePopulation(500)

myTown.printTownDescription() //this will have new population 

let genericMonster = Monster() //create instance of Monster
genericMonster.town = myTown
genericMonster.terrorizeTown()

let fredTheZombie = Zombie() //creates instance of Zombie
fredTheZombie.town = myTown //assigns myTown to town var
fredTheZombie.terrorizeTown() //runs this funciton which results in -10 from population
fredTheZombie.town?.printTownDescription() //if there is a town (there is) description will be printed

fredTheZombie.changeName("fred ze zombie", walksWithLimp: false)
//notice we leave out first paramater "name" but it's used as last word in method name 

var newTown = Town()
//newTown.changePopulation(-20)
let newZombie = Zombie()

newZombie.town = newTown
newZombie.terrorizeTown()
newZombie.town?.printTownDescription()

var newestTown = Town()
let dracula = Vampire()
dracula.town = newestTown
dracula.terrorizeTown()
dracula.town?.printTownDescription() //mistake I was making was calling population outside of the terrorizeTown method therefore no change in the number :(

let zombieNoise = Zombie.makeGnarlyNoise() //to use type methods you simply call on the type itself rather than an instance of the type 




















