//
//  DetailController.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import Foundation
import NetworkPackage

func detail(a: Int, b: Int, c: Int) -> String {
    return "\(a) srerie da \(b) ripetizioni con riposo di \(c) secondi"
}

func getData(filename: String) -> [Scheda] {
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    return NetworkPackage().loadFromJson(file: file)
}
