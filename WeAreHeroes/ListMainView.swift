//
//  ListMainView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct ListMainView: View {
    
    let superHeroe = getSuperHeores()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(superHeroe) { heroe in
                    NavigationLink(value: heroe) {
                        CellListView(heroe: heroe)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Super Heroes")
            .navigationDestination(for: SuperHeroe.self) { heroe in
                DetailView(heroe: heroe)
            }
        }
    }
}

#Preview {
    ListMainView()
}
