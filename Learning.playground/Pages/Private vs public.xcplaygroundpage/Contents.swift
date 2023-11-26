import Foundation



struct movieModel {
    let title: String
    let genre: movieGenre
    let isFavorite: Bool
    
    func updateIsFavorite(newValue: Bool) -> movieModel {
        movieModel(title: title, genre: genre, isFavorite: newValue)
    }
}

enum movieGenre {
    case Comedy
    case Drama
    case Horror
}

class movieManager {
    
    public var movie1 = movieModel(title: "Avatar", genre: .Drama, isFavorite: false)
     
    private var movie2 = movieModel(title: "Taxi", genre: .Comedy, isFavorite: true)
    
    private(set) var movie3 = movieModel(title: "Avenger", genre: .Drama, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateIsFavorite(newValue: isFavorite)
    }
}

let manager = movieManager()

let someValue = manager.movie3

//manager.movie3 = manager.movie1.updateIsFavorite(newValue: true)
manager.updateMovie3(isFavorite: true)
print(manager.movie3)
print(manager.movie1)
