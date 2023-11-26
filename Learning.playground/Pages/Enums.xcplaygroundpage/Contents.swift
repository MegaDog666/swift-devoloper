import Foundation


// Перечесления (Enums) это тоже самое что и структуры (Struct), только мы знаем все случаи во время выполнения

struct carModel {
    let brand: carBrandOption
    let model: String
}

struct carBrand {
    let title: String
}

enum carBrandOption {
    case ford
    case toyota
    case honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
//        default:
//            return "Default"
        }
        
         
//        if self == .ford {
//            return "Ford"
//        } else if self == .toyota {
//            return "Toyota"
//        } else {
//            return "Default value"
//        }
    }
}

//var car1: carModel = carModel(brand: "Toyota", model: "Mark 2")
//var car2: carModel = carModel(brand: "Ford", model: "Focus")
//var car3: carModel = carModel(brand: "Toyota", model: "Chaiser")

//var brand1 = carBrand(title:"Ford")
//var brand2 = carBrand(title: "Toyota")
//
//var car1 = carModel(brand: brand1, model:"Focus")
//var car2 = carModel(brand: brand1, model:"Fiesta")
//var car3 = carModel(brand: brand2, model:"Camry")

var car1 = carModel(brand: .ford, model: "fiesta")
var car2 = carModel(brand: .ford, model: "focus")
var car3 = carModel(brand: .toyota, model: "camry")

var fordBrand: carBrandOption = .ford

print(fordBrand.title)
