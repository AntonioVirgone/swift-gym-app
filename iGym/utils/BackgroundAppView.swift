//
//  BackgroundAppView.swift
//  iGym
//
//  Created by Antonio Virgone on 18/03/23.
//

import SwiftUI
import ColorPackage

struct BackgroundAppView: View {
    public let paleteGreen1 = ColorPackage().getColorFromRGB(r: 126, g: 170, b: 106)
    public let paleteGreen2 = ColorPackage().getColorFromRGB(r: 97, g: 154, b: 70)
    public let paleteGreen3 = ColorPackage().getColorFromRGB(r: 67, g: 128, b: 41)
    
    public let paleteBrown1 = ColorPackage().getColorFromRGB(r: 225, g: 193, b: 88)
    public let paleteBrown2 = ColorPackage().getColorFromRGB(r: 213, g: 175, b: 55)
    public let paleteBrown3 = ColorPackage().getColorFromRGB(r: 179, g: 151, b: 0)

    var body: some View {
        ZStack {
            paleteGreen2
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
