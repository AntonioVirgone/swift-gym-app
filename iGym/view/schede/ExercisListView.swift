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
                            Text("\(esercizio.value)")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(.black)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .foregroundColor(.white)
                .font(.system(size: 16))
                .fontWeight(.bold)

            }
        }
        .background(BackgroundAppView().paleteGreen1.ignoresSafeArea())
        .scrollContentBackground(.hidden)
    }
    
    struct ExercisListView_Previews: PreviewProvider {
        static var previews: some View {
            ExercisListView(scheda: [Scheda(title: "test", excercises: [Esercizio(code: "value00001", value: "test", serie: nil, ripetizioni: nil, riposo: nil)])])
        }
    }
}
