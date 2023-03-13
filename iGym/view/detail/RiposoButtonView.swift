//
//  RiposoButtonView.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import SwiftUI

struct RiposoButtonView: View {
    let riposo: Int
    
    @State private var drawingWidth = false

    var body: some View {
        Button(action: {
            drawingWidth = !drawingWidth
        }) {
            Text(!drawingWidth ? "Attiva riposo" : "Disattiva riposo")
        }
        if drawingWidth {
            CounterView(counter: riposo)
        }
    }
}

struct RiposoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RiposoButtonView(riposo: 10)
    }
}
