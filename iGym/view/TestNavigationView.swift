//
//  TestNavigationView.swift
//  iGym
//
//  Created by Antonio Virgone on 19/03/23.
//

import SwiftUI

struct View2: View {
    @Binding var push: Bool

    var body: some View {
        ZStack {
            Color.yellow
            Button(action: {
                withAnimation(.easeOut(duration: 5.3)) {
                    self.push.toggle()
                }
            }) {
                Text("POP")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct View1: View {
    @Binding var push: Bool

    var body: some View {
        ZStack {
            Color.green
            Button(action: {
                withAnimation(.easeOut(duration: 5.3)) {
                    self.push.toggle()
                }
            }) {
                Text("PUSH")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TestNavigationView: View {
    @State private var push = false

    var body: some View {
        ZStack {
            if !push {
                View1(push: $push)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
            }

            if push {
                View2(push: $push)
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
            }
        }
    }
}

struct TestNavigationView_Previews: PreviewProvider {
  static var previews: some View {
      TestNavigationView()
  }
}
