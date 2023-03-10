//
//  SchedaButtonView.swift
//  iGym
//
//  Created by Antonio Virgone on 10/03/23.
//

import SwiftUI

struct SchedaButtonView<T: View>: View {
    let name: String
    let destination: T
    
    var body: some View {
        NavigationLink(name) {
            destination
        }
        .frame(width: 250, height: 30)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [getColorFromRGB(r: 41, g: 127, b: 185), getColorFromRGB(r: 44, g: 62, b: 80)]), startPoint: .top, endPoint: .bottom))
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
