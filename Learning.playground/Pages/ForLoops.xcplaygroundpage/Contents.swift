import Foundation


//for x in 0..<50 {
//    print(x)
//}

print()

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

//for item in 0..<myArray.count {
//    print(myArray[item])
//}

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)

struct lessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    lessonModel(title: "Lesson 1", isFavorite: true),
    lessonModel(title: "Lesson 2", isFavorite: false),
    lessonModel(title: "Lesson 3", isFavorite: false),
    lessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLessons: [lessonModel]  = [
     
]

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)

for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
//        break;
        continue;
    }
    
    print("index:  \(index ) || lesson: \(lesson)")
}
