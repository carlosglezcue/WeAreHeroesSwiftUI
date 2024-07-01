//
//  CardView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 25/3/24.
//

import SwiftUI

struct CardView: View {
    
    let heroe: SuperHeroe
    
    var body: some View {
        VStack {
            Image(heroe.imagen)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(spacing: 10) {
                Text(heroe.nombreReal)
                    .font(.caption)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text(heroe.apodo)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background {
            Color(.yellow)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    CardView(heroe: .test)
}
