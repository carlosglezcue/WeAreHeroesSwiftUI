//
//  SuperHeroesTabView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct SuperHeroesTabView: View {
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Grid", systemImage: "circle.grid.2x2")
                }
            
            HorizontalMainView()
                .tabItem {
                    Label("Horizontal", systemImage: "scroll.fill")
                }
            
            ListMainView()
                .tabItem {
                    Label("List", systemImage: "list.clipboard.fill")
                }
        }
    }
}

#Preview {
    SuperHeroesTabView()
}
