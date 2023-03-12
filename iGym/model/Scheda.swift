//
//  Scheda.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import Foundation

struct Scheda: Identifiable, Hashable, Codable {
    let title: String
    let excercises: [Esercizio]
    let id = UUID()
}
