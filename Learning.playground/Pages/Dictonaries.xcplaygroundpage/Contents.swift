import Foundation


let finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitSet)

var myFirstDictonary: [String: Bool] = [
    "Apple": true,
    "Orange": false
]

let item = myFirstDictonary["Orange"]

var anotherDictonary : [String: String] = [
    "ABC": "Apple",
    "DEF": "Banana",
    "XYZ": "Apple",
]

let item2 = anotherDictonary["ABC"]

anotherDictonary["xyz"] = "Mango"

anotherDictonary.removeValue(forKey: "DEF")

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 1),
    PostModel(id: "def678", title: "Post 2", likeCount: 2),
    PostModel(id: "xyz890", title: "Post 3", likeCount: 3)
]

if postArray.indices.contains(1) {
    let item  = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 1),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 2),
    "xyz890" : PostModel(id: "xyz890", title: "Post 3", likeCount: 3),
]

let myNewItem = postDict["def678"]

print(myNewItem)
