struct PersonStruct {
    var name: String = ""
}

class PersonClass {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() -> String {
        return "Hello, my name is \(name)."
    }
}

var structInstance = PersonStruct(name: "Gupil")

var structInstanceRef = structInstance

var classInstance = PersonClass(name: "Gupil")

var classInstanceRef = classInstance

classInstance.sayHello()

print("Size of person struct ", MemoryLayout<PersonStruct>.size, " Bytes")

print("Size of person class ", MemoryLayout<PersonClass>.size, " Bytes")

withUnsafePointer(to: &structInstance.name) {
    ptr in print("Memory ref of structInstance: \(ptr)")
}

withUnsafePointer(to: &structInstanceRef.name) {
    ptr in print("Memory ref of structInstanceRef: \(ptr)")
}

withUnsafePointer(to: &classInstance.name) {
    ptr in print("Memory ref of classInstance: \(ptr)")
}

withUnsafePointer(to: &classInstanceRef.name) {
    ptr in print("Memory ref of classInstanceRef: \(ptr)")
}



class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "current speed is \(currentSpeed)"
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle dosen't necessarily make a noise
    }
}

//class SomeSubClass: SommeSuperClass {
//    // subclass defination goes here
//}

class Bicycle: Vehicle {
    var hasBasket = false
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

var b1 = Bicycle()
b1.hasBasket = true

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let t1 = Tandem()
t1.hasBasket = true
t1.currentNumberOfPassengers = 2
t1.currentSpeed  = 22.2

b1.currentSpeed = 15.0
print("Bicycle: \(b1.description)")
print("Bicycle: \(t1.description)")



class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    override var description: String {
        super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")


class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Student: Person {
    var favouriteSubject: String
    
    init(name: String, favoriteSubject: String) {
        self.favouriteSubject = favoriteSubject
        super.init(name: name)
    }
}