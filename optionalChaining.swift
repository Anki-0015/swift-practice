struct Person{

    var age: Int
    var residence: Residence?

}

struct Residence {

    var address: Address?

}

struct Address {

    var buildingNumber: Int?
    var streetName: String?
    var appartmentNumber: Int?

}

let firstPerson = Person(age: 20, residence: Residence(address: Address(buildingNumber: 11, streetName: "ABC", appartmentNumber: 101)))


if let residenceOfFirstPerson = firstPerson.residence {

    if let address = residenceOfFirstPerson.address {

        if let appartmentNumber = address.appartmentNumber {

            print(appartmentNumber)
        }
    }
}

// print(firstPerson.residence?.address?.appartmentNumber)

if let appartmentNumber = firstPerson.residence?.address?.appartmentNumber {
    print(appartmentNumber)
} else {
    print("No appartment number available")
}