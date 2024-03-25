//
//  DetailView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 25/3/24.
//

import SwiftUI

struct DetailView: View {
    
    let heroe: SuperHeroe
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image(heroe.imagen)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
                    .padding()
                
                Text(heroe.apodo)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.yellow)
                
                HStack(spacing: 10) {
                    Text("Edad:")
                        .underline()
                        .font(.caption)
                        .bold()
                        .foregroundStyle(.orange)
                    
                    Text(String(heroe.edad))
                        .font(.body)
                }
                Text("Descripción:")
                    .underline()
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.orange)
                
                Text(heroe.descripcion == nil ? heroe.historia ?? "" : heroe.descripcion ?? "")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text("Poderes disponibles:")
                    .underline()
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.orange)
                
                Text(heroe.powerList)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
        }
        .background(.black.opacity(0.5))
        .scrollBounceBehavior(.basedOnSize)
        .navigationTitle(heroe.nombreReal)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(heroe: .test)
}
