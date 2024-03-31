//
//  DetailView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 25/3/24.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let heroe: SuperHeroe
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image(heroe.imagen)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
                    .frame(height: 300)
                
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
                DescriptionCardView(heroe: heroe)
                    .padding(.horizontal)
            }
        }
        .background(.black.opacity(0.5))
        .scrollBounceBehavior(.basedOnSize)
        .navigationTitle(heroe.nombreReal)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.circle)
                .tint(.yellow)
            }
        }
    }
}

#Preview {
    DetailView(heroe: .test)
}


