/* 

task2 :-

you are building a login system. A User has a username and an optional email. The system should perform the following:-

1) check that a user has a valid username and email using a function validateUserInput().
2) Use guard and guard let to exit early if validates fail.
3) Use enum called LoginStatus to represent possible
   outcome: success, invalidUsername, invalidEmail.
4) Use variable shadowing by naming unwrapped values the same as optional properties.

*/


 


struct User {

    var username: String
    var email: String?
}

enum LoginStatus {

    case success
    case invalidUsername
    case invalidEmail
}

func validateUserInput(user: User) -> LoginStatus {

    guard !user.username.isEmpty else {
        return .invalidUsername
    }

    guard let email = user.email, !email.isEmpty , email.contains("@") else {
        return .invalidEmail
    }

    print("Welcome \(user.username)! , Email: \(email)")
    return .success
}


let testUsers = [
    User(username: "Ankit", email: "Ankit@gmail"),
    User(username: "", email: "Ankit@gmail"),
    User(username: "Ankit", email: nil),

]

for user in testUsers {

    let result = validateUserInput(user: user)

    switch result {

    case .success:
        print("Login successful for user: \(user.username) with email: \(user.email ?? "No email provided")")

    case .invalidUsername:
        print("Invalid username provided.")

    case .invalidEmail:
        print("Invalid email provided.")
    }
    print("none")
}
