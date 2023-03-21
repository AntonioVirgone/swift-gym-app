//
//  LoginController.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import Foundation

func authenticateUser(username: String, password: String) {
    if username.lowercased() == "admin" {
        wrongUsername = 0
        if password.lowercased() == "test" {
            wrongPassword = 0
            showingLoginScreen = true
            isAdmin = true
        }
        /*
         else {
            wrongPassword = 2
        }
         */
    }
    else {
        showingLoginScreen = true
        isAdmin = false
    }
    /*
    else {
        wrongUsername = 2
    }
     */
}
