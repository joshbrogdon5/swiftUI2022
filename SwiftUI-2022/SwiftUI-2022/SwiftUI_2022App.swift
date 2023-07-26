//
//  SwiftUI_2022App.swift
//  SwiftUI-2022
//
//  Created by Joshua Brogdon on 1/12/23.
//

import SwiftUI

@main
struct SwiftUI_2022App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
