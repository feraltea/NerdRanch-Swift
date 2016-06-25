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

var myTown = Town(region: "SE", population: 0, stoplights: 6) //initializer syntax to create new instance of Town with corresponding stored properties
myTown?.printTownDescription()

var newTown = Town(population: 5000, stoplights: 10) //assigns region placeholder N/A to newTown 

newTown?.printTownDescription()

//let ts = myTown.townSize
myTown?.changePopulation(1000000)
//print(ts)
print("size: \(myTown?.townSize); population \(myTown?.population)")
////print("The population of my town is \(myTown.population) and there are \(myTown.numberOfStoplights) stoplights")
//
////let's instead use new instance method 
//myTown.printTownDescription() //this will still have original population b/c executes from top to bottom
//
//myTown.changePopulation(500)
//
//myTown.printTownDescription() //this will have new population 
//
//let genericMonster = Monster() //create instance of Monster
//genericMonster.town = myTown
//genericMonster.terrorizeTown()
//

var someTown = Town(region: "NE", population: 7600, stoplights: 20)
var fredTheZombie: Zombie? = Zombie(limp: true, fallingApart: true, town: someTown, monsterName: "Fred") //creates instance of Zombie. Order matters when initializing (super class initializations last)

fredTheZombie?.terrorizeTown() //runs this funciton which results in -10 from population
fredTheZombie?.town?.printTownDescription() //if there is a town (there is) description will be printed

fredTheZombie?.changeName("fred ze zombie", walksWithLimp: false)
////notice we leave out first paramater "name" but it's used as last word in method name
//
var convenientZombie = Zombie(limp: true, fallingApart: false)
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
//
print("victim pool: \(fredTheZombie?.victimPool)")

print(Zombie.makeGnarlyNoise)
if Zombie.isTerrifying {
    print("GTFO")
}

fredTheZombie = nil //deallocating all properties and therefore call "deinit"
//
//var newTown = Town()
////newTown.changePopulation(-20)
//let newZombie = Zombie()
//
//newZombie.town = newTown
//newZombie.terrorizeTown()
//newZombie.town?.printTownDescription()
//
//var newestTown = Town()
//let dracula = Vampire()
//dracula.town = newestTown
//dracula.terrorizeTown()
//dracula.town?.printTownDescription() //mistake I was making was calling population outside of the terrorizeTown method therefore no change in the number :(
//
////let zombieNoise = Zombie.makeGnarlyNoise() //to use type methods you simply call on the type itself rather than an instance of the type 
//
//print(Zombie.makeGnarlyNoise)
//
//if Zombie.isTerrifying {
//    print("run the fuck away")
//}
//

//var town3 = Town()
//
//let rick = Zombie()
//rick.town = town3
//rick.terrorizeTown()
//
//
























