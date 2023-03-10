//
//  SecondDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct SecondDayView: View {
    private let schedaB: [Scheda] = loadFromFile("scheda_b.json")

    var body: some View {
        ExercisListView(scheda: schedaB)
    }
}

struct SecondDayView_Previews: PreviewProvider {
    static var previews: some View {
        SecondDayView()
    }
}
