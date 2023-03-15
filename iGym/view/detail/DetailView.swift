//
//  DetailView.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import SwiftUI
import CoreData

struct DetailView: View {
    @State var number: Int16 = 0
    @State var weigth: Int16 = 0

    @Environment(\.managedObjectContext) var manageObjectContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var repetition: FetchedResults<Repetition>
    
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
            
            List {
                ForEach(repetition) { repetition in
                    NavigationLink(destination: EditRepetitionView(repetition: repetition)) {
                        HStack {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("\(repetition.number)").bold()
                                
                                Text("\(Int(repetition.weigth)) ") + Text("calories").foregroundColor(.red)
                            }
                            Spacer()
                        }
                    }
                }
                .onDelete(perform: deleteFood)
            }
            .listStyle(.plain)
        }
    }
    
    private func deleteFood(offsets: IndexSet) {
        withAnimation {
            offsets.map { repetition[$0] }.forEach(manageObjectContext.delete)
            
            DataController().save(context: manageObjectContext)
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(esercizio: Esercizio(value: "test", serie: 1, ripetizioni: 1, riposo: 10))
        }
    }
}
