import SwiftUI

struct Movie {
    var name: String
    var imdbRating: Double
    var description: String
    var certificate: String
    var runtime: String
    var releaseDate: String
    var genre: String
    var director: String
    var cast: String
    var image: Image
    var isFavorite: Bool

    init(
        name: String,
        imdbRating: Double,
        description: String = "",
        certificate: String = "",
        runtime: String = "",
        releaseDate: String = "",
        genre: String = "",
        director: String = "",
        cast: String = "",
        image: Image,
        isFavorite: Bool = false
    ) {
        self.name = name
        self.imdbRating = imdbRating
        self.description = description
        self.certificate = certificate
        self.runtime = runtime
        self.releaseDate = releaseDate
        self.genre = genre
        self.director = director
        self.cast = cast
        self.image = image
        self.isFavorite = isFavorite
    }
}

