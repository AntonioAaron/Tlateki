//
//  FullMapView.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI
import MapKit

struct FullMapView: View {
    @Binding var showFullMap: Bool
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 19.3005, longitude: -99.1043), // Centro de Milpa Alta
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @StateObject private var viewModel = DestinationViewModel()

    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: viewModel.destinations) { destination in
                MapPin(coordinate: CLLocationCoordinate2D(latitude: destination.latitude, longitude: destination.longitude), tint: destination.color)
            }
            .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showFullMap.toggle()
            }) {
                Image(systemName: "arrow.backward")
                    .font(.title)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

