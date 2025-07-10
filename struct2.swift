struct PersonStruct {

    var name: String
}

var structInstance = PersonStruct(name: "Ankit")
var structInstanceRef = structInstance

class PersonClass {

    var name: String = ""
    var age: Int = 0
    var gender: String = ""

    init(name: String){
        self.name = name
    }

    func Sayhello(){
        print("Hello, my name is \(self.name)")
    }
}

var classInstance = PersonClass(name: "Ankit")
var classInstanceRef = classInstance 
classInstance.Sayhello()

print("size of person struct ", MemoryLayout<PersonStruct>.size, " bytes")
print("size of String type ", MemoryLayout<String>.size, " bytes")

withUnsafePointer(to: &structInstance) { pointer in
    print("Address of struct instance: \(pointer)")
}

withUnsafePointer(to: &classInstanceRef) { pointer in
    print("Address of class instance reference: \(pointer)")
}

withUnsafePointer(to: &classInstance.name) { pointer in
    print("Address of class instance.name: \(pointer)")
}

withUnsafePointer(to: &classInstanceRef.name) { pointer in
    print("Address of class instance reference.name: \(pointer)")
}

withUnsafePointer(to: &classInstance.age) { pointer in
    print("Address of class instance.age: \(pointer)")
}

withUnsafePointer(to: &classInstanceRef.age) { pointer in
    print("Address of class instance reference.age: \(pointer)")
}

withUnsafePointer(to: &classInstance.gender) { pointer in
    print("Address of class instance.gender: \(pointer)")
}