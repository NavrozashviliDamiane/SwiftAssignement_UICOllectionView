import SwiftUI


struct MovieRow: View {
    let movie: Movie
    let toggleFavorite: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(movie.name)
                .font(.title)
            Text("IMDb Rating: \(movie.imdbRating)")
                .font(.subheadline)
            Text(movie.description)
                .font(.body)
            Text("Certificate: \(movie.certificate)")
            Text("Runtime: \(movie.runtime)")
            Text("Release Date: \(movie.releaseDate)")
            Text("Genre: \(movie.genre)")
            Text("Director: \(movie.director)")
            Text("Cast: \(movie.cast)")
            Button(action: {
                toggleFavorite()
            }) {
                Image(systemName: movie.isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(movie.isFavorite ? .red : .gray)
            }
        }
    }
}

