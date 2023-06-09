//
//  CreateUserView.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import SwiftUI

struct CreateUserView: View {
    @Environment(\.managedObjectContext) var manageObjectContext
    @Environment(\.dismiss) var dismiss

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var avatar: String = "figure.climbing"
    @State private var isAdmin: Bool = false
    @FetchRequest(sortDescriptors: [SortDescriptor(\.username, order: .reverse)]) var user: FetchedResults<User>
    
    var body: some View {
        VStack {
            Form {
                Section {
                    VStack {
                        VStack {
                            Text("Crea nuovo utente")
                            TextField("Inserire username", text: $username)
                                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                .textInputAutocapitalization(.never)
                                .disableAutocorrection(true)
                            TextField("Inserire password", text: $password)
                                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                                .textInputAutocapitalization(.never)
                                .disableAutocorrection(true)
                            Toggle("This user is admin", isOn: $isAdmin)
                        }
                        .textFieldStyle(.roundedBorder)
                        HStack {
                            Spacer()
                            Button {
                                DataController().addUser(username: username, password: password, avatar: avatar, admin: isAdmin, context: manageObjectContext)
                            } label: {
                                Text("Save").foregroundColor(.green)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    
                }
            }
            List {
                ForEach(user) { user in
                    Text(user.username ?? "")
                }
                .onDelete(perform: deleteUser)
            }
            .listStyle(.plain)
            .background(BackgroundAppView().paleteGreen1.ignoresSafeArea())
            .scrollContentBackground(.hidden)
        }
        .background(BackgroundAppView().paleteGreen1.ignoresSafeArea())
        .scrollContentBackground(.hidden)
        .navigationBarTitle("Admin")
    }
    
    private func deleteUser(offsets: IndexSet) {
        withAnimation {
            offsets.map { user[$0] }.forEach(manageObjectContext.delete)
            
            DataController().save(context: manageObjectContext)
        }
    }
}

struct CreateUserView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserView()
    }
}
