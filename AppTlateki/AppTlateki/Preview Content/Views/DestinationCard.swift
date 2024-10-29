//
//  DestinationCard.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI

struct DestinationCard: View {
    let destination: Destination

    var body: some View {
        VStack {
            Image(destination.imageName)

                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 120)
                .clipped()
                .cornerRadius(10)
            
            Text(destination.name)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(destination.location)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(width: 200, height: 250)
        .background(destination.color)
        .cornerRadius(12)
    }
}
