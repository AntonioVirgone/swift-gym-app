//
//  HomeView.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

struct FirstDayView: View {
    let scheda = getData(filename: "scheda_a.json")
    
    var body: some View {
        ExercisListView(scheda: scheda)
    }
}

struct FirstDayView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDayView()
    }
}
