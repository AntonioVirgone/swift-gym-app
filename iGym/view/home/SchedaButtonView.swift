//
//  SchedaButtonView.swift
//  iGym
//
//  Created by Antonio Virgone on 10/03/23.
//

import SwiftUI
import ColorPackage

struct SchedaButtonView<T: View>: View {
    let name: String
    let destination: T
    
    var body: some View {
        NavigationLink(name) {
            destination
        }
        .fontWeight(.bold)
        .foregroundColor(.white)
        .frame(width: 300, height: 50)
        .background(BackgroundAppView().paleteGreen3)
        .cornerRadius(10)
    }
}

struct SchedaButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SchedaButtonView<FirstDayView>(name: "Giorno A", destination: FirstDayView())
    }
}
