//
//  EditRepetitionView.swift
//  iGym
//
//  Created by Antonio Virgone on 15/03/23.
//

import SwiftUI

struct EditRepetitionView: View {
    @Environment(\.managedObjectContext) var manageObjectContext
    @Environment(\.dismiss) var dismiss

    var repetition: FetchedResults<Repetition>.Element

    @State private var name = ""
    @State private var number: Double = 0
    @State private var weigth: Double = 0

    var body: some View {
        Form {
            Section {
                TextField("\(repetition.number)", text: $name)
                    .onAppear {
                        number = repetition.number
                        weigth = repetition.weigth
                    }
                VStack {
                    Text("Peso: \(Int(weigth))")
                    Slider(value: $weigth, in: 0...200, step: 5)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().editRepetition(repetition: repetition, number: number, weigth: weigth, context: manageObjectContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}
