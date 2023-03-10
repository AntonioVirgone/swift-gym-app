//
//  ExercisListView.swift
//  iGym
//
//  Created by Antonio Virgone on 10/03/23.
//

import SwiftUI

struct ExercisListView: View {
    let scheda: [Scheda]
    
    @State private var singleSelection: UUID?

    var body: some View {
        List(selection: $singleSelection) {
            ForEach(scheda) { scheda in
                Section(header: Text("\(scheda.title)")) {
                    ForEach(scheda.excercises) { esercizio in
                        if (esercizio.serie != nil) {
                            let details = detail(a: esercizio.serie!, b: esercizio.ripetizioni!, c: esercizio.riposo!)
                            Text("\(esercizio.value) \(details)").font(.system(size: 12)).fontWeight(.bold)
                        } else {
                            Text("\(esercizio.value)").font(.system(size: 12)).fontWeight(.bold)
                        }
                    }
                }
            }
        }
    }
}

struct ExercisListView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisListView(scheda: [Scheda(title: "test", excercises: [Esercizio(value: "test", serie: nil, ripetizioni: nil, riposo: nil)])])
    }
}

struct Scheda: Identifiable, Hashable, Codable {
    let title: String
    let excercises: [Esercizio]
    let id = UUID()
}

struct Esercizio: Identifiable, Hashable, Codable {
    let value: String
    let serie: Int?
    let ripetizioni: Int?
    let riposo: Int?
    let id = UUID()
}
