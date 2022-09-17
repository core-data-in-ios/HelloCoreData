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
        VStack {
            TextField("Enter movie name", text: $movieName)
            Button("Save") {
                coreDM.saveMovie(title: movieName)
                movies = coreDM.getAllMovies()
            }
            
            List(movies, id: \.self) { movie in
                Text(movie.title ?? "oops")
            }
            
            Spacer()
        }
        .padding()
        .onAppear  {
            movies = coreDM.getAllMovies()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}
