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
        .frame(width: 250, height: 30)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [ColorPackage().getColorFromRGB(r: 70, g: 70, b: 70), ColorPackage().getColorFromRGB(r: 0, g: 0, b: 0)]), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .font(.headline)
        .cornerRadius(10)
    }
}

struct SchedaButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SchedaButtonView<FirstDayView>(name: "Giorno A", destination: FirstDayView())
    }
}
