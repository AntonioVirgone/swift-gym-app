//
//  TestNavigationView2.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import SwiftUI

struct TestNavigationView2: View {
    @State var isPresentedDetailView = false
    @State var isPresentedImageView = false
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Text("Name")
                        .onTapGesture {
                            isPresentedDetailView.toggle()
                        }
                    
                    Image(systemName: "person")
                        .onTapGesture {
                            isPresentedImageView.toggle()
                        }
                }
            }
            .navigationDestination(isPresented: $isPresentedImageView) {
                Image(systemName: "person")
            }
            .navigationDestination(isPresented: $isPresentedDetailView) {
                Text("Detail View")
            }
        }
    }
}

struct TestNavigationView2_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView2()
    }
}
