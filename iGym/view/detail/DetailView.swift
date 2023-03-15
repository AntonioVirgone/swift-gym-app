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

    @State private var showingAddView = false

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
                ForEach(repetition) { repetition in
                    if esercizio.code == repetition.trainingCode {
                        NavigationLink(destination: EditRepetitionView(code: esercizio.code ?? "", repetition: repetition)) {
                            HStack {
                                VStack(alignment: .leading, spacing: 6) {
                                    Text("\(Int(repetition.number)) ripetioni").bold()
                                    Text("\(Int(repetition.weigth)) ") + Text("kg").foregroundColor(.red)
                                    Text("\(repetition.date!.formatted())").font(.custom("Poppins", size: 12))
                                }
                                Spacer()
                            }
                        }
                    }
                }
                .onDelete(perform: deleteRepetition)
            }
            .listStyle(.plain)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showingAddView.toggle()
                } label: {
                    Label("Add Food", systemImage: "plus.circle")
                }
            }
        }
        .sheet(isPresented: $showingAddView) {
            AddRepetitionView(code: esercizio.code ?? "")
        }
        
    }
    
    private func deleteRepetition(offsets: IndexSet) {
        withAnimation {
            offsets.map { repetition[$0] }.forEach(manageObjectContext.delete)
            
            DataController().save(context: manageObjectContext)
        }
    }
        
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(esercizio: Esercizio(code: "value00001", value: "test", serie: 1, ripetizioni: 1, riposo: 10))
        }
    }
}
