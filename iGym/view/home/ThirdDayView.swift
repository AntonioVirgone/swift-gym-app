//
//  ThirdDayView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct ThirdDayView: View {
    var body: some View {
        VStack {
            Text("Giorno C")
            List {
                Text("Air Bike 10 minuti (1’ 150 watt 30’’ 250 watt)")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Leg Press 45° " + detail(a: 4, b: 15, c: 60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Squat + Overhead Press " + detail(a: 4, b:15, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Chest Incline + Alzate laterali " + detail(a: 3, b:10, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("High pull + high pull inverso " + detail(a: 3, b:12, c:60))
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                Text("Curl Manubri + Tricipiti sopra la testa " + detail(a: 3, b:12, c:60))
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
                Text("Bike 3 minuti").font(.system(size: 12)).fontWeight(.bold)
                Text("Rope 40").font(.system(size: 12)).fontWeight(.bold)
                Text("Side Plank 25+25").font(.system(size: 12)).fontWeight(.bold)
                Text("Crunch gambe alzate 25").font(.system(size: 12)).fontWeight(.bold)
            }
        }
    }
}

struct ThirdDayView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdDayView()
    }
}
