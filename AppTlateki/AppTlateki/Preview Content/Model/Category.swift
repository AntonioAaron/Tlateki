//
//  Category.swift
//  AppTlateki
//
//  Created by Facultad de Contaduría y Administración on 29/10/24.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let nombre: String
    let imagen: String
    let consejos: [Tip]
}

