//
//  HomeView.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

struct FirstDayView: View {
    private let schedaA: [Scheda] = loadFromFile("scheda_a.json")
    
    @State private var singleSelection: UUID?
    
    var body: some View {
        ExercisListView(scheda: schedaA)
    }
}

struct FirstDayView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDayView()
    }
}

func detail(a: Int, b: Int, c: Int) -> String {
    return "\(a) srerie da \(b) ripetizioni con riposo di \(c) secondi"
}
