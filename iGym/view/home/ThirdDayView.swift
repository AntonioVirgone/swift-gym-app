//
//  ThirdDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct ThirdDayView: View {
    private let schedaC: [Scheda] = loadFromFile("scheda_c.json")

    var body: some View {
        ExercisListView(scheda: schedaC)
    }
}

struct ThirdDayView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdDayView()
    }
}
