import Foundation




let myBool: Bool = false

let myOtherBool: Bool? = nil


let newValue: Bool? = myOtherBool

let newValue2: Bool = myOtherBool ?? false


// ------------------------------------------------


var userPremiumClass: Bool? = true

var user: Bool = userPremiumClass ?? false


// Безопасное раскрытие
// 1. ??
// 2. if-let
// 3. guard

// Опасное раскрытие
// Использование !
