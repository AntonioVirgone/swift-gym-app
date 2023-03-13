//
//  DataManager.swift
//  iGym
//
//  Created by Antonio Virgone on 13/03/23.
//

import CoreData

class DataManager {
    static let shared = DataManager()
    
    let container: NSPersistentContainer = NSPersistentContainer(name: "GymModel")
    
    init() {
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Container load failed: \(error)")
            }
        }
    }
}

