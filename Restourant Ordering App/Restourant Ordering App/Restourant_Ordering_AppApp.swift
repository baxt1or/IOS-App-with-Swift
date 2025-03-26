//
//  Restourant_Ordering_AppApp.swift
//  Restourant Ordering App
//
//  Created by baxtiyor bekmurodov on 25/03/25.
//

import SwiftUI
import SwiftData

@main
struct Restourant_Ordering_AppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
