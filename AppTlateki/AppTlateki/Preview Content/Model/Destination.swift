//
//  Destination.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import Foundation
import SwiftUI

struct Destination: Identifiable {

    var id = UUID()  // Identificador del lugar
    var name: String  // Nombre del lugar
    var location: String   // Lugar
    var imageName: String  // Nombre de la imagen específica para cada destino
    var category: String    // Categoría de reciclaje
    var latitude: Double    // Agregar latitud
    var longitude: Double   // Agregar longitud
    
    // Propiedad calculada para determinar el color basado en la categoría
    var color: Color {
        switch category {
        case "Tócixos":
            return .red
        case "PET":
            return .blue
        case "Vidrio":
            return .green
        case "Metales":
            return .purple
        case "Carton":
            return .brown
        case "Orgánico":
            return .orange
        default:
            return .gray 
        }
    }
}
