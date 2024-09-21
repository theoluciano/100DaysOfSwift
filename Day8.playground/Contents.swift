import Cocoa

func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

printTimesTable(for: 10, end: 10)
printTimesTable(for: 8)

var characters = ["Pam", "Deangelo", "Jim", "Robert"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

//

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String { // means that it can throw errors, not that it must
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent!"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage.")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
