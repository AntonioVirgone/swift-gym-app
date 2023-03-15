//
//  ExercisListView.swift
//  iGym
//
//  Created by Antonio Virgone on 10/03/23.
//

import SwiftUI
import ColorPackage

struct ExercisListView: View {
    let scheda: [Scheda]
    @State private var singleSelection: UUID?
    
    var body: some View {
        List(selection: $singleSelection) {
            ForEach(scheda) { scheda in
                Section(header: Text("\(scheda.title)")) {
                    ForEach(scheda.excercises) { esercizio in
                        NavigationLink(destination: DetailView(esercizio: esercizio)) {
                            Text("\(esercizio.value)").font(.system(size: 12)).fontWeight(.bold)
                        }
                    }
                }
            }
        }
    }
    
    struct ExercisListView_Previews: PreviewProvider {
        static var previews: some View {
            ExercisListView(scheda: [Scheda(title: "test", excercises: [Esercizio(code: "value00001", value: "test", serie: nil, ripetizioni: nil, riposo: nil)])])
        }
    }
}
