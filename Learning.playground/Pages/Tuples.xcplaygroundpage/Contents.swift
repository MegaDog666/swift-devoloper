import Foundation


var userName: String = "Hello"
var userPremium: Bool = false
var userIsNew: Bool = true
func getUserName() -> String {
    userName
}
func getUserPremium() -> Bool {
    userPremium
}

// Ограничение 1 return
func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserPremium()
    return name
}

// Кортеж может обьединять несколько объектов данных
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserPremium()
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userPremium, userIsNew)

let info1 = getUserInfo2()
let name1 = info1.0

func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserPremium()
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name

func getUserInfo4 () -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userPremium, userIsNew )
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
     
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
