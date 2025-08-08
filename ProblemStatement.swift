// struct Version: Comparable, Equatable, CustomStringConvertible {
//     var major: Int
//     var minor: Int
    
//     var description: String {
//         "Version \(major).\(minor)"
//     }
    
//     static func == (lhs: Version, rhs: Version) -> Bool {
//         return lhs.major == rhs.major && lhs.minor == rhs.minor
//     }

//     static func < (lhs: Version , rhs: Version) -> Bool {
//         if lhs.major == rhs.major {
//             return lhs.minor < rhs.minor
//         }
//         return lhs.major < rhs.major
//     }

// }

// let v1 = Version(major: 1, minor: 2)
// let v2 = Version(major: 1, minor: 5)
// let v3 = Version(major: 2, minor: 0)

// print(v1)
// print(v2 > v1)
// print([v2, v3, v1].sorted())










// protocol Developer {
//     func writeCode()
//     func completeProject()
//     func provideTestcase()
// }

// class JavaDeveloper: Developer {
//     func writeCode() {
//         print("Writing Java code")
//     }
    
//     func completeProject() {
//         print("Completing Java project")
//     }
    
//     func provideTestcase() {
//         print("Providing test cases for Java code")
//     }
// }

// class swiftDeveloper: Developer {
//     func writeCode() {
//         print("Writing Swift code")
//     }
    
//     func completeProject() {
//         print("Completing Swift project")
//     }
    
//     func provideTestcase() {
//         print("Providing test cases for Swift code")
//     }
// }

// class Manager{

//     var developerDelegate: Developer?

//     func teamManage() {

//     }

//     func goForVacation() {

//     }
// }

// var manager = Manager()
// var javaDeveloper = JavaDeveloper()
// var swiftDeveloper = swiftDeveloper()

// manager.developerDelegate = javaDeveloper
// manager.developerDelegate?.writeCode()

// manager.developerDelegate = swiftDeveloper
// manager.developerDelegate?.writeCode()









protocol PaymentDelegate {
    func processPayment(amount: Double)
}

class CreditCard: PaymentDelegate {
    func processPayment(amount: Double) {
        print("Paid \(amount) with credit card")
    }
}

class Cash: PaymentDelegate {
    func processPayment(amount: Double) {
        print("Paid \(amount) with cash")
    }
}

class CoffeeMachine {
    var paymentDelegate: PaymentDelegate?
    
    func buyCoffee(price: Double) {
        paymentDelegate?.processPayment(amount: price)
        print("Coffee ready!")
    }
}

let machine = CoffeeMachine()
let creditCard = CreditCard()
let cash = Cash()

machine.paymentDelegate = creditCard
machine.buyCoffee(price: 4.50)

machine.paymentDelegate = cash
machine.buyCoffee(price: 2.00)