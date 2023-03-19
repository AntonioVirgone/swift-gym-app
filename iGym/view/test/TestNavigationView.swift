//
//  TestNavigationView.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import SwiftUI
struct View2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("POP")
            }
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct TestNavigationView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: View2()) {
                Text("PUSH")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
    }
}

struct TestNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView()
    }
}
