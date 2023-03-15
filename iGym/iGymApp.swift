//
//  iGymApp.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

@main
struct iGymApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
