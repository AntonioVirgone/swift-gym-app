//
//  AddRepetitionView.swift
//  iGym
//
//  Created by Antonio Virgone on 15/03/23.
//

import SwiftUI

struct AddRepetitionView: View {
    @Environment(\.managedObjectContext) var manageObjectContext
    @Environment(\.dismiss) var dismiss
    
    let code: String
    
    @State private var number:Double = 0
    @State private var weigth: Double = 0
    
    var body: some View {
        Form {
            Section {
                Text("Esercizio \(code)")
                TextField("Ripetizioni", value: $number, formatter: NumberFormatter())
                VStack {
                    Text("Peso: \(Int(weigth))")
                    Slider(value: $weigth, in: 0...150, step: 5)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().addRepetition(number: number, weigth: weigth, trainingCode: code, context: manageObjectContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddRepetitionView_Previews: PreviewProvider {
    static var previews: some View {
        AddRepetitionView(code: "value00001")
    }
}
