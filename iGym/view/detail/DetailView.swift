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
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Repetition.entity(), sortDescriptors: [])
    private var products: FetchedResults<Repetition>
    
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
                ForEach(products) { product in
                    HStack {
                        Text("\(product.number)")
                        Spacer()
                        Text("\(product.weigth)")
                    }
                }
            }
            .navigationTitle("Product Database")
            
            VStack {
                Spacer()
                Button("Add") {
                    addProduct()
                }
                Spacer()
                Button("Clear") {
                    number = 0
                    weigth = 0
                }
            }
            Button(action: {
                
            }) {
                Text("Cliccami")
            }
        }
    }
    
    private func addProduct() {
        withAnimation {
            let product = Repetition(context: viewContext)
            product.number = number
            product.weigth = weigth
            
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
            fatalError("An error occured: \(error)")
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(esercizio: Esercizio(value: "test", serie: 1, ripetizioni: 1, riposo: 10))
        }
    }
}
