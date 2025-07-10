struct Book {
    
    var name: String
    var announcementYear: Int?
    
}

let firstBook = Book (name: "First book", announcementYear: 2023)
let secondBook = Book (name: "Second book", announcementYear: 2024)

var books: [Book]? = [firstBook, secondBook]

books = nil

let thirdBook = Book(name: "Third book", announcementYear: nil)

