//
//  MainView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 24/3/24.
//

import SwiftUI

struct MainView: View {
    
    let superHeroe = getSuperHeores()
    let fixedItems: [GridItem] = [GridItem(.fixed(115)), GridItem(.fixed(115))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: fixedItems, spacing: 20) {
                    ForEach(superHeroe) { heroe in
                        NavigationLink(value: heroe) {
                            CardView(heroe: heroe)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .background(.black.opacity(0.5))
            .navigationTitle("Super Heroes")
            .navigationDestination(for: SuperHeroe.self) { heroe in
                DetailView(heroe: heroe)
            }
        }
    }
}

#Preview {
    MainView()
}
