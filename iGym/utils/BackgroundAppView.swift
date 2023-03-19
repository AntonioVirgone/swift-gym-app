//
//  BackgroundAppView.swift
//  iGym
//
//  Created by Antonio Virgone on 18/03/23.
//

import SwiftUI

struct BackgroundAppView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Circle()
                .scale(1.9)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.8)
                .foregroundColor(.white.opacity(0.10))
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.05))
            Circle()
                .scale(1.6)
                .foregroundColor(.white.opacity(0.05))
            Circle()
                .scale(1.4)
                .foregroundColor(.white)
        }
    }
}

struct BackgroundAppView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAppView()
    }
}
