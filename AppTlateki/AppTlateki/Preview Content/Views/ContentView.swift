//
//  ContentView.swift
//  AppTlateki
//
//  Created by Facultad de Contaduría y Administración on 29/10/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject private var viewModel = DestinationViewModel()
    @State private var showFullMap = false

    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .padding(.top, 10)
                
                Text("Tlateki")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.brown)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5) // Sombra para el texto
                    .padding(.top, 10)
            }
            
            // Mapa pequeño
            MapView(showFullMap: $showFullMap)
                .frame(height: 300)
                .cornerRadius(12)
                .padding(.horizontal)
                .onTapGesture {
                    showFullMap.toggle()
                }
            
            Text("Destinos de Reciclaje")
                .font(.headline)
                .padding(.top, 20)
            
            // Carrusel de tarjetas
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(viewModel.destinations) { destination in
                        
                        VStack {
                            // Ajusta la imagen
                            Color(destination.color)
                            Image(destination.imageName)
                                .resizable() // Hace que la imagen pueda cambiar de tamaño
                                .scaledToFit() // Escala la imagen para que mantenga su proporción
                                .frame(width: 100, height: 100) // Ajusta el tamaño de la image(cámbialo según tus necesidades)
                                .clipShape(RoundedRectangle(cornerRadius: 10)) // Opcional: le da bordes redondeados
                            
                            Text(destination.name)
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Text(destination.location)
                                .font(.subheadline)
                                .foregroundColor(.white)

                            Color(destination.color)
                        }
                        .padding()
                        .background(destination.color)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .fullScreenCover(isPresented: $showFullMap) {
            FullMapView(showFullMap: $showFullMap)
        }
    }
}
