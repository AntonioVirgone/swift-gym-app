//
//  SecondDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct SecondDayView: View {
    let scheda = getData(type: "b")

    var body: some View {
        ExercisListView(scheda: scheda)
    }
}

struct SecondDayView_Previews: PreviewProvider {
    static var previews: some View {
        SecondDayView()
    }
}
