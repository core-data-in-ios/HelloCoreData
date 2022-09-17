//
//  HelloCoreDataApp.swift
//  HelloCoreData
//
//  Created by Chris Hand on 9/16/22.
//

import SwiftUI

@main
struct HelloCoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coreDM: CoreDataManager())
        }
    }
}
