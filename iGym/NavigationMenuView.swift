//
//  NavigationMenuView.swift
//  iGym
//
//  Created by Antonio Virgone on 09/03/23.
//

import SwiftUI

struct NavigationMenuView: View {
    struct Sea: Hashable, Identifiable {
        let name: String
        let id = UUID()
    }
    
    struct OceanRegion: Identifiable {
        let name: String
        let seas: [Sea]
        let id = UUID()
    }
    
    private let oceanRegions: [OceanRegion] = [
        OceanRegion(name: "Pacific",
                    seas: [Sea(name: "Australasian Mediterranean"),
                           Sea(name: "Philippine"),
                           Sea(name: "Coral"),
                           Sea(name: "South China")]),
        OceanRegion(name: "Atlantic",
                    seas: [Sea(name: "American Mediterranean"),
                           Sea(name: "Sargasso"),
                           Sea(name: "Caribbean")]),
        OceanRegion(name: "Indian",
                    seas: [Sea(name: "Bay of Bengal")]),
        OceanRegion(name: "Southern",
                    seas: [Sea(name: "Weddell")]),
        OceanRegion(name: "Arctic",
                    seas: [Sea(name: "Greenland")])
    ]
    
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(oceanRegions) { region in
                    Section(header: Text("Major \(region.name) Ocean Seas")) {
                        ForEach(region.seas) { sea in
                            Text(sea.name)
                        }
                    }
                }
            }
            .navigationTitle("Oceans and Seas")
        }
    }
}

struct NavigationMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenuView()
    }
}

struct Ocean: Identifiable, Hashable {
    let name: String
    let id = UUID()
}
