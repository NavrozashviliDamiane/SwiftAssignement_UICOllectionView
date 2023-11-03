import SwiftUI

struct ContentView: View {
    @State private var movies: [Movie] = [
        Movie(name: "The Batman", imdbRating: 7.5, genre: "Action", image: Image("Image"), isFavorite: false),
        Movie(name: "Uncharted", imdbRating: 8.0, genre: "Drama", image: Image("Image (1)"), isFavorite: false),
        Movie(name: "Turning Red", imdbRating: 6.5, genre: "Comedy", image: Image("Image (2)"), isFavorite: false),
        Movie(name: "The Exorcism of God", imdbRating: 8.0, genre: "Drama", image: Image("Image (3)"), isFavorite: false),
        Movie(name: "Spider-Man", imdbRating: 6.5, genre: "Comedy", image: Image("Image (4)"), isFavorite: false),
        Movie(name: "Morbius", imdbRating: 6.5, genre: "Comedy", image: Image("Image (5)"), isFavorite: false),
        // Add more movies with the desired attributes
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 163), spacing: 8)], spacing: 8) {
                    ForEach(movies.indices, id: \.self) { index in
                        NavigationLink(destination: MovieDetail(movie: movies[index])) {
                            MovieCard(movie: movies[index])
                        }
                    }
                }
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 16, trailing: 20))
            }
            .background(Color(hex: "#1A2232"))
            .navigationTitle("Movie List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

