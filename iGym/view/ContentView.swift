//
//  ContentView.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundAppView()
                VStack(alignment: .center) {
                    VStack {
                        Image("app-icon")
                            .cornerRadius(60)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 0))
                        SchedaButtonView(name: "Giorno A", destination: FirstDayView())
                        SchedaButtonView(name: "Giorno B", destination: SecondDayView())
                        SchedaButtonView(name: "Giorno C", destination: ThirdDayView())
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
