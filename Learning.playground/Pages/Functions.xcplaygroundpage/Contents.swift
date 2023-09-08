import Foundation


func myFistFunc() {
    print("My First Function called")
    mySecondFunc()
}

func mySecondFunc() {
    print("My Second Function called")
}

myFistFunc()


func getUserName() -> String {
    let username: String = "Andrey"
    return username
}

func userPremmiumClass() -> Bool {
    return false
}

let name: String = getUserName()


// ----------------------------------------------

showFirstScreen()

func showFirstScreen() {
    let userDidCompleteOnboadrding: Bool = true
    let userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboadrding: userDidCompleteOnboadrding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("Show home screen")
    } else {
        print("Show onboarding screen ")
    }
}

func checkUserStatus(didCompleteOnboadrding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboadrding && profileIsCreated {
       return true
    } else {
        return false
    }
}


// ----------------------------------------------

doSomething()

func doSomething() {
    let isNew: Bool = false
    
    if isNew {
        print("New")
    } else {
        print("Not new")
    }
}


func doSomethingElse() -> Bool {
    var tittle: String = "Avengers"
    
    guard tittle == "Avengers" else {
        print("Not marvel")
        return false
    }
    return true
}


// Вычисляемые переменные и функции

var number1 = 5
var number2 = 6

func sumNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

func sumNumbers() -> Int { /*Это тоже самое что и ниже, просто если нам нужно вводить
                            числа именно числа в () то пишем функцию, если необходимости
                            в этом нет, то проще использовать вычисляемую переменную
                            */
    return number1 + number2
}
var resoult = sumNumbers()

var sumNumbers2: Int {
    return number1 + number2
}
