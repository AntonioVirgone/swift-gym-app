//
//  Ripetizioni.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import UIKit
import SwiftUI

class Ripetizione: NSObject, ObservableObject, Identifiable {
    let numero: Int
    let peso: Int
    
    init(numero: Int, peso: Int) {
        self.numero = numero
        self.peso = peso
    }
}
