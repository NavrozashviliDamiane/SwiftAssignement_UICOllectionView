import SwiftUI

struct MovieCard: View {
    let movie: Movie

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            movie.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 163, height: 278)
                .overlay(
                    Text("IMDb \(movie.imdbRating)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.black.opacity(0.6))
                        .cornerRadius(8)
                        .offset(x: 8, y: 8),
                    alignment: .topTrailing
                )
            Text(movie.name)
                .font(.title)
            Text(" \(movie.genre)")
        }
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4)
    }
}

