// Design a Student and Mentor class for an online course platform.

// Each student may or may not have a mentor assigned.
// Every mentor can optionally have a specialization.
// A student can attempt to fetch the mentor's specialization.
// Only students with non-empty names and valid ages (>=10) should be allowed.
// The method getMentorSpecialization() should return the specialization if it exists.
// Use optional binding to safely unwrap optional values
// Use optional chaining to get the mentor specialization it is exists








// class Mentor {

//     var name: String
//     var specialization: String?

//     init(name: String, specialization: String?) {
//         self.name = name
//         self.specialization = specialization
//     }
// }

// class Student {

//     var name: String
//     var age: Int
//     var mentor: Mentor?

//     init?(name: String, age: Int, mentor: Mentor?) {

//         if name.isEmpty || age < 0 {
//             return nil
//         }
//         self.name = name
//         self.age = age
//         self.mentor = mentor
//     }

//     func getMentorSpecialization() -> String {

//         if let mentor = mentor {
            
//             if let specialization = mentor.specialization {
//                 return specialization
//             } 

//             else {
//                 return nil
//             }
//         } 

//         else {
//             return nil
//         }
//     }
// }


// let mentor1 = Mentor(name: "Ankit", specialization: "Swift Programming")
// let student1 = Student(name: "blabla", age: 20, mentor: mentor1)







class Mentor {
    var specialization: String?
    init(specialization: String?) {
        self.specialization = specialization
    }
}

class Student {
    let name: String
    let age: Int
    let mentor: Mentor?

    init?(name: String, age: Int, mentor: Mentor?) {
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age = age
        self.mentor = mentor
    }

    func getMentorSpecialization() -> String? {
        return mentor?.specialization
    }
}
let student1 = Student(name: "", age: 12, mentor: Mentor(specialization: "iOS"))
let student2 = Student(name: "Ankit", age: 15, mentor: Mentor(specialization: "iOS"))
let student3 = Student(name: "john", age: 9, mentor: Mentor(specialization: nil))

if let student = student1 {

    if let specialization = student.getMentorSpecialization() {
        print("\(student.name)'s mentor specializes in \(specialization).")
    } 
    else {
        print("\(student.name)'s mentor has no specialization.")
    }
} 
else {
    print("Student could not be created.")
    
}


if let specialization = student2?.getMentorSpecialization() {
    print(specialization)
} else {
    print("Student2 could not be created or has no mentor specialization.")
}