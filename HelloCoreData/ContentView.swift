//
//  ContentView.swift
//  HelloCoreData
//
//  Created by Chris Hand on 9/16/22.
//

import SwiftUI

struct ContentView: View {
    
    let coreDM: CoreDataManager
    @State private var movieName: String = ""
    @State private var movies: [Movie] = [Movie]()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter movie name", text: $movieName)
                Button("Save") {
                    coreDM.saveMovie(title: movieName)
                    movies = coreDM.getAllMovies()
                }
                
                List {
                    ForEach(movies, id:\.self) { movie in
                        NavigationLink(destination: MoviedetailView(movie: movie, coreDM: coreDM),
                                       label: {
                            Text(movie.title ?? "" )
                        })
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            let movie = movies[index]
                            coreDM.deleteMovie(movie: movie)
                            movies = coreDM.getAllMovies()
                        }
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .padding()
            .onAppear  {
                movies = coreDM.getAllMovies()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}
