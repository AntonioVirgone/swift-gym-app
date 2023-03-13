//
//  iGymApp.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

@main
struct iGymApp: App {
    let persistenceController = DataManager.shared

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
            .navigationSplitViewStyle(.balanced)
        }
    }
}
