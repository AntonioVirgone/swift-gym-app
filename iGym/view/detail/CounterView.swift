//
//  CounterView.swift
//  iGym
//
//  Created by Antonio Virgone on 12/03/23.
//

import SwiftUI

struct CounterView: View {
    @State var counter: Int
    @State private var drawingWidth = false

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Riposo di \(counter)")
                .onReceive(timer) { _ in
                    let initCounter = counter
                    
                    if counter > 0 {
                        counter -= 1
                    } else {
                        counter = initCounter
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color(.systemGray6))
                RoundedRectangle(cornerRadius: 3)
                    .fill(.red.gradient)
            }
            .frame(width: drawingWidth ? 250 : 0, height: drawingWidth ? 1 : 30, alignment: .leading)
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            .animation(.easeInOut(duration: Double(counter)), value: drawingWidth)
            .onAppear {
                drawingWidth.toggle()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(counter: 10)
    }
}
