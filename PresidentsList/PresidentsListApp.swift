//
//  PresidentsListApp.swift
//  PresidentsList
//
//  Created by Madi Lumsden on 11/3/22.
//

import SwiftUI

@main
struct PresidentsListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
