class Animal{

    var name: String

    init(name: String) {
        self.name = name
    }
}

class Dog : Animal{

    func bark() {
        print("woof!")
    }
}

class Cat: Animal {

    func meow() {
        print("meow!")
    }
}

class Bird: Animal {

    func chirp() {
        print("chirp!")
    }
}

var allPets: [Animal] = [Dog(name: "Tommy"), Cat(name: "Kitty"), Bird(name: "Sparrow")]

func getClientPet(allPets: [Animal]) -> Animal {

    return allPets[2]

}

// let pet = getClientPet(allPets: allPets)


// if pet is Dog {
//     print("the client's pet is a dog")
// }
// else if pet is Cat {
//     print("the client's pet is a cat")
// }
// else if pet is Bird {
//     print("the client's pet is a bird")
// }
// else {
//     print("unknown pet type")
// }


// if let bird = pet as? Bird {

//     print("The pet is a bird and it says:")
//     bird.chirp()
// } 

// else {
//     print("The pet is not a bird.")
// }


let pet = getClientPet(allPets: allPets)

var dogCount = 0, catCount = 0, birdCount = 0

for pet in allPets {

    if let dog = pet as? Dog {
        
        dogCount += 1
        print("\(dog.name) says: ")
        dog.bark()
    } 
    else if let cat = pet as? Cat {
        catCount += 1
        print("\(cat.name) says: ")
        cat.meow()
    } 
    else if let bird = pet as? Bird {

        birdCount += 1
        print("\(bird.name) says: ")
        bird.chirp()
    }
}