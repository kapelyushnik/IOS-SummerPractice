import UIKit


protocol Workable {
    func work()
}

protocol Readable {
    func read()
}

enum BookCategory {
    case fantasy
    case psychology
    case detective
    case adventure
    
}

enum PersonRate {
    case pro
    case middle
    case beginner
}

class Person {
    var name: String
    var age: Int
    var personRate: PersonRate
    
    init(name: String, age: Int, personRate: PersonRate) {
        self.name = name
        self.age = age
        self.personRate = personRate
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Employee: Person, Workable {
    
    var salary: Int
    
    init(name: String, age: Int, personRate: PersonRate, salary: Int) {
        self.salary = salary
        super.init(name: name, age: age, personRate: personRate)
    }
    
    func work() {
        print("I'm working now")
    }
}

class Guest: Person, Readable {
    var isFrequentClient: Bool
    
    init(name: String, age: Int, isFrequentClient: Bool) {
        self.isFrequentClient = isFrequentClient
        super.init(name: name, age: age)
    }
    
    func read() {
        print("I'm reading")
    }
}

class Book {
    var pages: Int
    var bookName: String
    var author: String
    var category: BookCategory
    
    init(pages: Int, bookName: String, author: String, category: BookCategory) {
        self.pages = pages
        self.bookName = bookName
        self.author = author
        self.category = category
    }
}

class SecurityManager: Employee {
    var workShiftsAmount: Int
    
    init(name: String, age: Int, personRate: PersonRate, salary: Int, workShiftsAmount: Int) {
        self.workShiftsAmount = workShiftsAmount
        super.init(name: name, age: age, personRate: personRate, salary: salary)
    }
}

struct LibraryStatus {
    var isOpen: Bool
}

struct LibraryFloor {
    var isAvailable: Bool
}

struct LibraryRoom {
    var floorNumber: LibraryFloor
    var isFree: Bool
}


var employee1 = Employee(name: "Richard", age: 23, personRate: .middle, salary: 50000)
var employee2 = Employee(name: "James", age: 31, personRate: .pro, salary: 70000)
var employee3 = Employee(name: "Daemon", age: 18, personRate: .beginner, salary: 20000)

var security = SecurityManager(name: "Stephen", age: 34, personRate: .pro, salary: 60000, workShiftsAmount: 1337)

var guest1 = Guest(name: "Nate", age: 16, isFrequentClient: false)
var guest2 = Guest(name: "John", age: 23, isFrequentClient: true)

var book1 = Book(pages: 343, bookName: "Том Соейер", author: "Марк Твен", category: .adventure)
var book2 = Book(pages: 236, bookName: "Война и мир", author: "Лев Толстой", category: .fantasy)

var libraryStatus = LibraryStatus(isOpen: true)

var firstFloor = LibraryFloor(isAvailable: true)
var secondFloor = LibraryFloor(isAvailable: false)
var thirdFloor = LibraryFloor(isAvailable: false)

var firstRoom = LibraryRoom(floorNumber: firstFloor, isFree: true)
var secondRoom = LibraryRoom(floorNumber: secondFloor, isFree: false)
var thirdRoom = LibraryRoom(floorNumber: thirdFloor, isFree: false)

