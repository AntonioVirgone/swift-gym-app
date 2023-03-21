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

func getData(type: String) -> [Scheda] {
    var user: UserModel = getUser()

    guard let file = Bundle.main.url(forResource: "scheda_\(user.username)_\(type).json", withExtension: nil)
    else {
        fatalError("Couldn't find scheda_\(user.username)_\(type).json in main bundle.")
    }
    return NetworkPackage().loadFromJson(file: file)
}
