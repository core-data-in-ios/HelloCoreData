//
//  MoviedetailView.swift
//  HelloCoreData
//
//  Created by Chris Hand on 9/16/22.
//

import SwiftUI

struct MoviedetailView: View {
    
    let movie: Movie
    let coreDM: CoreDataManager
    @State private var movieName: String = ""
    
    var body: some View {
        VStack {
            TextField(movie.title ?? "", text: $movieName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Update") {
                coreDM.updateMovie()
            }
            Spacer()
        }
        .padding()
    }
}

struct MoviedetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let coreDM = CoreDataManager()
        let movie = Movie(context: coreDM.persistentContainer.viewContext)
        
        MoviedetailView(movie: movie, coreDM: coreDM)
    }
}
