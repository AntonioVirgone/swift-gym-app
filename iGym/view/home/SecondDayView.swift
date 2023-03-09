//
//  SecondDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct SecondDayView: View {
    var body: some View {
        VStack {
            Text("Giorno B")
            List {
                Text("Vogatore 10 minuti (<2.5)")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Piegamenti sulle braccia " + detail(a: 3, b: 15, c: 60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Chest Press " + detail(a: 3, b:12, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Pulley " + detail(a: 3, b:12, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Lat Machine " + detail(a: 3, b:12, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Shoulder Press " + detail(a: 3, b:12, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
            }
            List {
                Text("Cardio 10’ (alterno 1’ corsa e 1’ cammino)")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
            }
            .frame(width: .infinity, height: 110)
            List {
                Text("Circuito: 4 serie (rest.2’):").font(.system(size: 16)).fontWeight(.bold)
                Text("Affondi in cammino 8").font(.system(size: 12)).fontWeight(.bold)
                Text("Balzi su cubo 8").font(.system(size: 12)).fontWeight(.bold)
                Text("Jumping jack 40").font(.system(size: 12)).fontWeight(.bold)
                Text("Torsioni del busto 50").font(.system(size: 12)).fontWeight(.bold)
                Text("Crunch gambe alzate 25").font(.system(size: 12)).fontWeight(.bold)
            }
        }
    }
}

struct SecondDayView_Previews: PreviewProvider {
    static var previews: some View {
        SecondDayView()
    }
}
