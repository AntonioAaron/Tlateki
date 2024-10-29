//
//  DestinationViewModel.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI


class DestinationViewModel: ObservableObject {
    @Published var destinations: [Destination] = [

        Destination(name: "Centro de Reciclaje Milpa Alta", location: "Milpa Alta, CDMX", imageName: "recycle", category: "PET", latitude: 19.3005, longitude: -99.1043),
        Destination(name: "Punto Verde", location: "Milpa Alta, CDMX", imageName: "recycle", category: "Electrónicos", latitude: 19.3050, longitude: -99.1070),
        Destination(name: "Centro de Reciclaje Milpa Alta", location: "Milpa Alta, CDMX", imageName: "recycle", category: "PET", latitude: 19.3105, longitude: -99.1040),
        Destination(name: "Centro de Reciclaje Milpa Alta", location: "Milpa Alta, CDMX", imageName: "recycle", category: "PET", latitude: 19.3205, longitude: -99.1040),
        Destination(name: "Centro de Reciclaje Milpa Alta", location: "Milpa Alta, CDMX", imageName: "recycle", category: "PET", latitude: 19.3305, longitude: -99.1049),

    ]
}
