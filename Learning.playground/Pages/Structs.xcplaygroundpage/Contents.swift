import Foundation


// Структуры быстрые

struct Quiz {
    let title: String
    let dataCreated: Date
    let isPremium: Bool?
    
//    init(title: String, dataCreated: Date) {
//        self.title = title
//        self.dataCreated = dataCreated
//    }
    
//    init(title: String, dataCreated: Date = .now) {
//        self.title = title
//        self.dataCreated = dataCreated
//    }
    
    init(title: String, dataCreated: Date = .now, isPremium: Bool?) {
        self.title = title
        self.dataCreated = dataCreated
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello"

let myQuiz: Quiz = Quiz(title: "Test", dataCreated: .now, isPremium: true) // Это тоже самое что и init

//let myQuiz2: Quiz = Quiz(title: "Test")

print(myQuiz.title)


// ---------------------------------------------------------


struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()

// ----------------------------------------------------------

struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    
    // Мутация структуры
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()

// ----------------------------------------------------------


struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Nick", isPremium: false)

user3 = user3.markUserAsPremium(newValue: true)


// ----------------------------------------------------------


struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateUserAsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Nick", isPremium: false)
user4.markUserAsPremium()
user4.updateUserAsPremium(newValue: true)

let newValue = user4.isPremium 
