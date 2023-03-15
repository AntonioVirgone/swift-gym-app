//
//  DataController.swift
//  iGym
//
//  Created by Antonio Virgone on 15/03/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "GymModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved")
        } catch {
            print("Error in save data")
        }
    }
    
    func addRepetition(number: Double, weigth: Double, trainingCode: String, context: NSManagedObjectContext) {
        let repetition = Repetition(context: context)
        repetition.id = UUID()
        repetition.date = Date()
        repetition.number = number
        repetition.weigth = weigth
        repetition.trainingCode = trainingCode
        
        save(context: context)
    }
    
    func editRepetition(repetition: Repetition, number: Double, weigth: Double, trainingCode: String, context: NSManagedObjectContext) {
        repetition.date = Date()
        repetition.number = number
        repetition.weigth = weigth
        repetition.trainingCode = trainingCode

        save(context: context)
    }
}
