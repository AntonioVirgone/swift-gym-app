//
//  UserSettings.swift
//  iGym
//
//  Created by Antonio Virgone on 13/03/23.
//

import Foundation
import CoreData

class UserSettings: ObservableObject {
    @Published var numeber = 10
    var context: NSManagedObjectContext? {
        didSet {
            if oldValue != context {
                // do something
            }
        }
    }
}
