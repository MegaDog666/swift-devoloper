import Foundation


// Array, Sets

var myTitle = "Hello world"
var myTitle2 = "Hello world"

// Tuple

func doSomething(value: (title1: String, title2: String)  ) {
    
}

doSomething(value: (myTitle, myTitle2))


struct modelTitle {
    let title1: String
    let title2: String
}

func doSomething(value: modelTitle) {
    
}

doSomething(value: modelTitle(title1: myTitle, title2: myTitle2))


// -----------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false]

var myFruits: [String] = ["Apple", "Orange", "Banana", "Mango" ]
let count = myFruits.count
let first = myFruits.first
let last = myFruits.last

//myFruits = myFruits + ["Geroin"]

myFruits.append("Geroin")

print(myFruits)

let firstIndex = myFruits.indices.first
let lastIndex = myFruits.indices.last

myFruits[2]

// Проверка есть ли индекс чтобы не было ошибки out of range

if myFruits.indices.contains(5) {
    let item = myFruits[5]
}

myFruits.insert("Waterlemon", at: 3)

print(myFruits)

myFruits.remove(at: 5)


struct productModel {
    let product: String
    let price: Int
}

var myProduct: [productModel] = [
    productModel(product:  "Product1", price: 50),
    productModel(product: "Product2", price: 60),
    productModel(product: "Product3", price: 100 )
]


let finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitSet)
