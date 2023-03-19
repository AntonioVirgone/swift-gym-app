//
//  LoginView.swift
//  iGym
//
//  Created by Antonio Virgone on 18/03/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var isAdmin = false

    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundAppView()
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(BackgroundAppView().paleteGreen3)
                    .cornerRadius(10)
                    .navigationDestination(
                        isPresented: $showingLoginScreen) {
                            if (isAdmin) {
                                CreateUserView()
                            } else {
                                ContentView()
                            }
                        }
                }
            }
        }
        .navigationBarHidden(true)
    }
    
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
