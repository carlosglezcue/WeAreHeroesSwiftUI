//
//  HorizontalMainView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct HorizontalMainView: View {
    
    let superHeroe = getSuperHeores()
    let fixedItems: [GridItem] = [GridItem(.fixed(230)), GridItem(.fixed(230))]
    
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal) {
                LazyHGrid(rows: fixedItems) {
                    ForEach(superHeroe) { heroe in
                        NavigationLink(value: heroe) {
                            CardView(heroe: heroe)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding(.horizontal, 10)
            .background(.black.opacity(0.5))
            .navigationTitle("Super Heroes")
            .navigationDestination(for: SuperHeroe.self) { heroe in
                DetailView(heroe: heroe)
            }
        }
    }
}

#Preview {
    HorizontalMainView()
}
