//
//  SplashScreenView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 4/7/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
            
            VStack {
                Spacer()
                
                Text("Bienvenido a tu app de Super Héroes")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.yellow)
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
                
                Spacer()
                
                Text("designed by CG")
                    .font(.footnote)
                    .foregroundStyle(.thinMaterial)
                    .padding(.bottom, 50)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SplashScreenView()
}
