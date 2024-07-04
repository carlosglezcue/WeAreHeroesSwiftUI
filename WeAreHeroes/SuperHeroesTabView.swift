//
//  SuperHeroesTabView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct SuperHeroesTabView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        
        
        VStack {
            if isActive {
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
            } else {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    SuperHeroesTabView()
}
