import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score += 10

//

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}
              
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let deangelo = Manager(hours: 10)
robert.work()
deangelo.work()

let michael = Manager(hours: 0)
michael.printSummary()
robert.printSummary()

//

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

//

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)

//


class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive :)")
    }
    deinit {
        print("User \(id): I'm dead :(")
    }
}

var users = [User1]()

for i in 1...3 {
    let user = User1(id: i)
    print("User \(user.id): I'm in control :|")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is clear")

//

class Phooey {
    var name = "Phoo"
}

var user = Phooey()
user.name = "Deangelo"
user = Phooey()
print(user.name)

