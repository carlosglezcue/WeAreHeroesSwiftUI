//
//  DescriptionCardView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct DescriptionCardView: View {
    
    let heroe: SuperHeroe
    
    var body: some View {
        ZStack {
            VStack {
                Text("Descripción:")
                    .underline()
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.orange)
                    .padding(.bottom, 8)
                
                Text(heroe.descripcion == nil ? heroe.historia ?? "" : heroe.descripcion ?? "")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8)
                
                Text("Poderes disponibles:")
                    .underline()
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.orange)
                    .padding(.bottom, 8)
                
                Text(heroe.powerList)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8)
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 10.0)
                .foregroundStyle(.yellow.opacity(0.3))
        }
    }
}

#Preview {
    DescriptionCardView(heroe: .test)
}
