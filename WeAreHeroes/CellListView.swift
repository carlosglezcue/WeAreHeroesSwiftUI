//
//  CellListView.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 31/3/24.
//

import SwiftUI

struct CellListView: View {
    
    let heroe: SuperHeroe
    
    var body: some View {
        HStack {
            Image(heroe.imagen)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .clipShape(Circle())
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(heroe.nombreReal)
                    .font(.body)
                    .bold()
                    .padding(.bottom, 15)
                
                HStack {
                    Text("Edad: ")
                        .font(.caption)
                        .foregroundStyle(.orange)
                    
                    Text(String(heroe.edad))
                        .font(.caption2)
                }
                
            }
        }
    }
}

#Preview {
    CellListView(heroe: .test)
}
