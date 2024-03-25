//
//  SuperHeoreModel.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 24/3/24.
//

import Foundation

struct SuperHeroe: Codable, Identifiable, Hashable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let historia: String?
    let edad: Int
    let poderes: [String]
    let imagen: String
}

extension SuperHeroe {
    var power: [Powers] {
        poderes.compactMap { Powers(rawValue: $0) }
    }
    
    var powerList: String {
        poderes.formatted(.list(type: .and)).replacingOccurrences(of: "and", with: "y")
    }
}

func getSuperHeores() -> [SuperHeroe] {
    guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
    do {
        return try getJSON(url: url, type: [SuperHeroe].self)
    } catch {
        return []
    }
}

func getJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable {
    let data = try Data(contentsOf: url)
    return try JSONDecoder().decode(type, from: data)
}
