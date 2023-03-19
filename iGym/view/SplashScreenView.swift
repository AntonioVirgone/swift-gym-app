//
//  SplashScreenView.swift
//  iGym
//
//  Created by Antonio Virgone on 18/03/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var borderRadius = 10.0
    
    var body: some View {
        if (isActive) {
            LoginView()
        } else {
            ZStack {
                BackgroundAppView()
                VStack {
                    VStack {
                        Image("app-icon")
                            .cornerRadius(borderRadius)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.6)) {
                            self.size = 0.9
                            self.opacity = 1.0
                            self.borderRadius = 60.0
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
