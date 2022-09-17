//
//  CoreDataManager.swift
//  HelloCoreData
//
//  Created by Chris Hand on 9/16/22.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "Model")
        persistentContainer.loadPersistentStores { (description, error) in
            
            if let error = error {
                fatalError(error.localizedDescription)
            }
            
            print("coreData initialized\n\(description)")
        }
    }
    
    func saveMovie(title: String) {
        var movie = Movie(context: persistentContainer.viewContext)
        movie.title = title
        
        try! persistentContainer.viewContext.save()
        print("movie saved")
    }
}
