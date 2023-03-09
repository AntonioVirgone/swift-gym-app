//
//  HomeView.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

struct FirstDayView: View {
    var body: some View {
        VStack {
            Text("Giorno A")
            List {
                Text("Cardio tapy 5’ cammino + 10’ (alterno 1’ corsa e 1’ cammino)")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Leg Press " + detail(a: 4, b: 15, c: 60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Leg Extension " + detail(a: 3, b:15, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
            }
            List {
                Text("Circuito: 4 serie (rest.2’):").font(.system(size: 16)).fontWeight(.bold)
                Text("Squat con kettleball 20").font(.system(size: 12)).fontWeight(.bold)
                Text("Skeep alto 30 secondi").font(.system(size: 12)).fontWeight(.bold)
                Text("Step up continuo 60 secondi a gamba").font(.system(size: 12)).fontWeight(.bold)
                Text("Plank max").font(.system(size: 12)).fontWeight(.bold)
            }
            List {
                Text("Climbe 10 minuti").font(.system(size: 12)).fontWeight(.bold)
                Text("Crunch " + detail(a: 3, b: 20, c: 30)).font(.system(size: 12)).fontWeight(.bold)
                Text("Crunch obliqui " + detail(a: 3, b: 50, c: 30)).font(.system(size: 12)).fontWeight(.bold)
            }
        }
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
