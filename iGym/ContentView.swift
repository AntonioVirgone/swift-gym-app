//
//  ContentView.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    @State
    private var selection: MenuButtonScreen? = .dayA
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            NavigationSplitView {
                sidebarContent
            } detail: {
                detailContent
            }
            .navigationSplitViewStyle(.balanced)
            Spacer()
        }
    }
    
    var sidebarContent: some View {
        List(selection: $selection) {
            link(to: .dayA)
            link(to: .dayB)
            link(to: .dayC)
        }
        .listStyle(.sidebar)
    }
    
    func link(to page: MenuButtonScreen) -> some View {
        NavigationLink(value: page) {
            Text(page.title)
        }
    }
    
    @ViewBuilder
    var detailContent: some View {
        if let selection = selection {
            detailContent(for: selection)
                .buttonStyle(.bordered)
        } else {
            Text("No selection")
        }
    }
    
    @ViewBuilder
    func detailContent(for screen: MenuButtonScreen) -> some View {
        switch screen {
        case .dayA: FirstDayView()
        case .dayB: SecondDayView()
        case .dayC: ThirdDayView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum MenuButtonScreen: String, Codable {
    case dayA, dayB, dayC
    
    var title: String {
        if (rawValue == "dayA") { return "Day A" }
        else if (rawValue == "dayB") { return "Day B" }
        else { return "Day C" }
    }
}
