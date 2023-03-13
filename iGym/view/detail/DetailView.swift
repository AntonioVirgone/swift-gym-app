//
//  DetailView.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import SwiftUI

struct DetailView: View {
    let esercizio: Esercizio
    
    var body: some View {
        VStack(spacing: 50) {
            if (esercizio.serie != nil) {
                let details = detail(a: esercizio.serie!, b: esercizio.ripetizioni!, c: esercizio.riposo!)
                Text("\(esercizio.value) \(esercizio.serie ?? 0) srerie da \(esercizio.ripetizioni ?? 0) ripetizioni").font(.system(size: 22)).fontWeight(.bold)
            } else {
                Text("\(esercizio.value)").font(.system(size: 22)).fontWeight(.bold)
            }
            RiposoButtonView(riposo: esercizio.riposo ?? 60)
            List {
                Text("1º ripetizione: 100kg")
                Text("2º ripetizione: 100kg")
                Text("3º ripetizione: 100kg")
            }
            Button(action: {

            }) {
                Text("Cliccami")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(esercizio: Esercizio(value: "test", serie: 1, ripetizioni: 1, riposo: 10))
    }
}

