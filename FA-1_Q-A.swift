// Question: 1 :- 

// You are required to build a simple Student Record System for a school. 
// This system should be able to manage both general people and students, as well as their academic details. 
// You must define three core components: a Subject, a Person, and a Student. 
// A Subject should store the name of the subject and the marks scored in it. 
// It must also ensure that any marks entered remain within the range of 0 to 100, and if not, they should be automatically adjusted to the nearest valid value. 
// A Person should have a name and an email address (which may or may not be available). 
// Whenever a person's email is updated, the system should print a confirmation message. 
// You should also provide a way to retrieve the email in uppercase form if it's available.


struct  Subject{
    let name: String
    var marks: Int {

        willSet {
            if newValue < 0 {
                marks = 0
            } 
            else if marks > 100 {
                marks = 100
            }
        }
    }

}

struct Person {

    let name: String
    var email: String? {
        
        didSet {
            if email != nil {
                print("Email updated to: \(email!)")
            }
        }
    }

}

struct Student {
    let person: Person
    var subjects: [Subject]
    
    func getEmailInUppercase() -> String? {
        return person.email?.uppercased()
    }
}










// Question: 2 :-

// The Student should be modelled as a special kind of Person and must contain additional information such as a roll number, a list of
// subjects, and a grade level (such as Primary, Middle, or High). 
// Each student should be able to generate a report that prints their name, email (if it exists), grade level, and a list of all subjects with their marks. 
// If the email is missing, the report should handle that case gracefully. 
// You should create a list that includes a mix of People and Students and then loop through that list to print different details: for students
// , display their name and roll number; for other people, display only their name.


struct Subject {
    let name: String
    var marks: Int {
        didSet {
            if marks < 0 {
                marks = 0
            } 
            else if marks > 100 {
                marks = 100
            }
        }
    }
}

struct Person {
    let name: String
    var email: String? {
        didSet {
            if let email = email {
                print("Email updated to: \(email)")
            }
        }
    }
}

struct Student: Person {
    let rollNumber: String
    let gradeLevel: String
    var subjects: [Subject]
    
    func generateReport() -> String {
        var report = "Name: \(name)\n"
        if let email = email {
            report += "Email: \(email)\n"
        } else {
            report += "Email: Not provided\n"
        }
        report += "Grade Level: \(gradeLevel)\n"
        report += "Subjects:\n"
        
        for subject in subjects {
            report += "- \(subject.name): \(subject.marks) marks\n"
        }
        
        return report
    }
}







// Question: 3 :-

// You should also implement two key functions. 
// The first function should allow you to change the email of a student. 
// The second function should be used to update a student's marks for a particular subject. 
// This function should take a Student, the subject's name, and the new marks as input. 
// It should search through the student's list of subjects and update the marks if the subject is found. 
// If the subject is not found, it should print an appropriate message. 
// Also, ensure that when marks are updated, they still follow the rule of staying within the valid range. 
// Use appropriate types and logic to design the relationships and behaviour of each part of the system, 
// and ensure your solution demonstrates all these features clearly.



struct Subject {
    let name: String
    var marks: Int {
        didSet {
            if marks < 0 {
                marks = 0
            } else if marks > 100 {
                marks = 100
            }
        }
    }
}

struct Person {
    let name: String
    var email: String? {
        didSet {
            if let email = email {
                print("Email updated to: \(email)")
            }
        }
    }
}

struct Student: Person {
    let rollNumber: String
    let gradeLevel: String
    var subjects: [Subject]
    
    func generateReport() -> String {
        var report = "Name: \(name)\n"
        if let email = email {
            report += "Email: \(email)\n"
        } 
        else {
            report += "Email: Not provided\n"
        }
        report += "Grade Level: \(gradeLevel)\n"
        report += "Subjects:\n"
        
        for subject in subjects {
            report += "- \(subject.name): \(subject.marks) marks\n"
        }
        
        return report
    }
}

func changeEmail(of student: inout Student, to newEmail: String) {
    student.email = newEmail
}