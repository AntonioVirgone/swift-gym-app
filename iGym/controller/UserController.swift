//
//  UserController.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import Foundation

func setUser(user: UserModel) {
    let encoder = JSONEncoder()
    if let encoded = try? encoder.encode(user) {
        let defaults = UserDefaults.standard
        defaults.set(encoded, forKey: "user")
    }
}

func getUser() -> UserModel {
    let defaults = UserDefaults.standard
    if let savedPerson = defaults.object(forKey: "user") as? Data {
        let decoder = JSONDecoder()
        if let loadedPerson = try? decoder.decode(UserModel.self, from: savedPerson) {
            return loadedPerson
        }
    }
    return UserModel(username: "Nobody", avatar: "")
}
