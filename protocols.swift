// class Shoe{
//     let color: String
//     let size: Int
//     let hasLaces: Bool

//     init(color: String, size: Int, hasLaces: Bool) {
//         self.color = color
//         self.size = size
//         self.hasLaces = hasLaces
//     }
//     var description: String{
//         return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
//     }
// }

// let myShoe = Shoe(color: "Red", size: 42, hasLaces: true)
// print(myShoe.description);








// class Book {
//     let title: String
//     let author: String
    
//     init(title: String, author: String) {
//         self.title = title
//         self.author = author
//     }
    
//     var description: String {
//         return "Book(title: \(title), author: \(author))"
//     }
// }

// let myBook = Book(title: "1984", author: "George Orwell")
// print(myBook.description)


// protocol CustomStringConvertible {
//     var description: String { get }
// }

// class BookWithProtocol: CustomStringConvertible {
    
//     let title: String
//     let author: String
    
//     init(title: String, author: String) {
//         self.title = title
//         self.author = author
//     }
    
//     var description: String {
//         return "Book(title: \(title), author: \(author))"
//     }
// }

// let myBookWithProtocol = BookWithProtocol(title: "1984", author: "George Orwell")
// print(myBookWithProtocol.description)







// struct Employee: Equatable {

//     let firstName: String
//     let lastName: String
//     let phoneNumber: String

// }

// let currentEmp = Employee(firstName: "Ankit", lastName: "Bansal", phoneNumber: "123456")
// let selectEmp = Employee(firstName: "Ankit", lastName: "Bansal", phoneNumber: "1234567")

// if currentEmp == selectEmp {
//     print("Both are same")
// }
// else{
//     print("Not same")
// }


 





// struct Book: Equatable {

//     let title: String
//     let author: String
// }

// let book1 = Book(title: "hello", author: "world")
// let book2 = Book(title: "Hello", author: "World")

// if book1 == book2 {
//     print("same")
// }
// else{
//     print("not same")
// }








struct Employee: Equatable, Comparable {

    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String

    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
    }

    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

let employee1 = Employee(firstName: "John", lastName: "Doe", jobTitle: "Software Engineer", phoneNumber: "123456")
let employee2 = Employee(firstName: "Jane", lastName: "Smith", jobTitle: "Product Manager", phoneNumber: "123456")
let employee3 = Employee(firstName: "Alice", lastName: "Johnson", jobTitle: "Designer", phoneNumber: "1234567")
let employee4 = Employee(firstName: "Bob", lastName: "Brown", jobTitle: "Data Scientist", phoneNumber: "12345678")
let employee5 = Employee(firstName: "Charlie", lastName: "Davis", jobTitle: "QA Engineer", phoneNumber: "123456789")

let employees = [employee1, employee2, employee3, employee4, employee5]

if employee1 == employee2 {
    print("Employees are the same.")
} else {
    print("Employees are different.")
}

let sortedEmployees = employees.sorted(by: <)

for employee in sortedEmployees {
    print(employee)
}