// struct Book {
    
//     var name: String
//     var announcementYear: Int?
    
// }

// let firstBook = Book (name: "First book", announcementYear: 2023)
// let secondBook = Book (name: "Second book", announcementYear: 2024)

// var books: [Book] /*?*/  = [firstBook, secondBook] 

// // books = nil

// let thirdBook = Book(name: "Third book", announcementYear: 2025)

// // if(thirdBook.announcementYear != nil) {
// //     print(thirdBook.announcementYear!)
// // } 
// // else {
// //     print("No announcement year available")
// // }

// // print(thirdBook.announcementYear)

// if let year = thirdBook.announcementYear {
//     print(year)
// } 
// else {
//     print("No announcement year available")
// }





struct Toddler{

    var name: String
    var monthsOld: Int

    init?(name: String, monthsOld: Int) {

        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }

        else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let firstToddler = Toddler(name: "Alice", monthsOld: 36)

if let toddler = firstToddler {
    print("\(toddler.name) is \(toddler.monthsOld) months old.")
} 
else {
    print("Invalid toddler data.")
}