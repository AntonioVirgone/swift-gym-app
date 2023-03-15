//
//  MyProperty.swift
//  iGym
//
//  Created by Antonio Virgone on 13/03/23.
//

import Foundation
import SwiftUI

struct MyProperty: DynamicProperty {
    @Environment(\.managedObjectContext) private var viewContext
    @StateObject var object = UserSettings()

    // update is called before body in the View containing this property
    func update() {
        // environment vars now are valid
        object.context = viewContext
    }
}
