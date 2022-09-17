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
    
    var body: some View {
        VStack {
            TextField("Enter movie name", text: $movieName)
            Button("Save") {
                coreDM.saveMovie(title: movieName)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}
