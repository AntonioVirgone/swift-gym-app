//
//  Esercizio.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import Foundation

struct Esercizio: Identifiable, Hashable, Codable {
    let value: String
    let serie: Int?
    let ripetizioni: Int?
    let riposo: Int?
    let id = UUID()
}
