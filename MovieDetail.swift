import SwiftUI

struct MovieDetail: View {
    let movie: Movie

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(movie.name)
                    .font(.title)
                    .padding(.bottom, 8)

                // Display all other movie attributes here
                movie.image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 200) 
              
                Text("IMDb Rating: \(movie.imdbRating)")
                Text("Description: \(movie.description)")
                Text("Certificate: \(movie.certificate)")
                Text("Runtime: \(movie.runtime)")
                Text("Release Date: \(movie.releaseDate)")
                Text("Genre: \(movie.genre)")
                Text("Director: \(movie.director)")
                Text("Cast: \(movie.cast)")
            }
            .padding()
        }
        .navigationBarTitle(movie.name, displayMode: .inline)
    }
}

