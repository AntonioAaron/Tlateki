//
//  DestinationViewModel.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI


class DestinationViewModel: ObservableObject {
    @Published var destinations: [Destination] = [

        Destination(name: "Centro de materiales tóxicos", location: "Milpa Alta, CDMX", imageName: "toxicoCard", category: "Tócixos", latitude: 19.302787523646636, longitude: -99.10534958031668),
        Destination(name: "Centro de recoleción de pet", location: "Milpa Alta, CDMX", imageName: "petCard", category: "PET", latitude: 19.29039416951316, longitude: -99.11663811641877),
        Destination(name: "Centro de recolección de vidrio", location: "Milpa Alta, CDMX", imageName: "vidrioCard", category: "Vidrio", latitude: 19.29720140427562, longitude: -99.09219594884253),
        Destination(name: "Centro de recolección de metales", location: "Milpa Alta, CDMX", imageName: "metalCard", category: "Metales", latitude: 19.26403467866145, longitude: -99.104417634314),
        Destination(name: "Centro de recolección de carton", location: "Milpa Alta, CDMX", imageName: "cartonCard", category: "Carton", latitude: 19.262434625555784, longitude: -99.12538146961232),

    ]
}
