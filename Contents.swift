import UIKit

let defaults = UserDefaults.standard
/*
 here defaults = object
 UserDefaults = Class
 standard = Singleton
 */
class Car{
    var color = "Blue"
    
}

let myCar = Car()
myCar.color

let yourCar = Car()
yourCar.color = "red"
print(yourCar.color) // its because this two are different objects

class Animal{
    var domastic = "cat"
    static let singletonAnimal = Animal()
}
let domasticAnimal = Animal.singletonAnimal
print(domasticAnimal.domastic)
domasticAnimal.domastic = "dog"
print(domasticAnimal.domastic)
let whildAnimal = Animal.singletonAnimal
print(whildAnimal.domastic) // still its referencing to the same variable

class Domastic{
    init(){
        Animal.singletonAnimal.domastic = "cow"
    }
}

class Wild{
    init(){
        print(Animal.singletonAnimal.domastic)
    }
}

let a = Domastic()
let b = Wild()
