//
//  ThirdDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct ThirdDayView: View {
    let scheda = getData(type: "c")

    var body: some View {
        ExercisListView(scheda: scheda)
    }
}

struct ThirdDayView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdDayView()
    }
}
