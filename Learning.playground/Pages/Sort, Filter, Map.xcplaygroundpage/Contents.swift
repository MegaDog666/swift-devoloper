import Foundation

struct dataBaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [dataBaseUser] = [
    dataBaseUser(name: "Nick", isPremium: true, order: 4),
    dataBaseUser(name: "Emily", isPremium: false, order: 1),
    dataBaseUser(name: "Samanta", isPremium: true, order: 3),
    dataBaseUser(name: "Joe ", isPremium: true, order: 10000),
    dataBaseUser(name: "Criss", isPremium: false, order: 2),
]

//var allPremiumUsers: [dataBaseUser] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    }
//    return false
//}

var allPremiumUsers: [dataBaseUser] = allUsers.filter { user in
    return user.isPremium
}

var allPremiumUsers2: [dataBaseUser] = allUsers.filter({ $0.isPremium }) // это тоже самое что и выше, просто на более высоком уровне

//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}



print(allPremiumUsers)


var orderedUsers: [dataBaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

var orderUsers2: [dataBaseUser] = allUsers.sorted(by: { $0.order < $1.order }) // Это тоже самое что и выше, просто на более высоком уровне

print(orderedUsers)


var userNames: [String] = allUsers.map { user in
    return user.name
}

var userNames2: [String] = allUsers.map( {$0.name} ) // Это тоже самое что и выше, просто на более высоком уровне

print(userNames)
