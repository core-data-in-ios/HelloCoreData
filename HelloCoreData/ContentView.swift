//
//  ContentView.swift
//  HelloCoreData
//
//  Created by Chris Hand on 9/16/22.
//

import SwiftUI

struct ContentView: View {
    
    let coreDM: CoreDataManager
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}
