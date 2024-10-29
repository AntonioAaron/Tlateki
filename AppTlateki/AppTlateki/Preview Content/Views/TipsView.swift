//
//  Untitled.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

import SwiftUI
import MapKit

struct TipsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Sección de encabezado de la vista
                VStack {
                    
                    Spacer()
                    Text("Consejos")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                    Text("Aqui encontrarás noticias, campañas y centros de salud de tu localidad")
                        .font(.custom("HelveticaNeue", size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                // Apartado de Noticias de Salud
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack{
                        Image("noticias")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Noticias")
                            .font(.title)
                            .padding(.bottom, 5)
                    }
                    
                    // Ejemplo de noticia
                    Link(destination: URL(string: "https://www.eluniversal.com.mx/metropoli/fotos-rios-de-aguas-negras-brotan-en-milpa-alta-en-riesgo-la-salud-de-mas-de-12-mil-personas/")!) {
                        VStack(alignment: .leading) {
                            Text("Residuos en la localidad")
                                .font(.headline)
                                .foregroundColor(.blue)
                            Text("Una tubería de líquido residual colapsó y puede contaminar un pozo lo que pone en riesgo la salud de más de 12 mil habitantes")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    }
                    
                    Link(destination: URL(string: "https://www.otra-noticia.com")!) {
                        VStack(alignment: .leading) {
                            Text("Campaña de vacunación")
                                .font(.headline)
                                .foregroundColor(.blue)
                            Text("Resumen de esta otra noticia...")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                
                // Apartado de Primeros Auxilios
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack{
                        Image("plantas")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Plantas medicinales")
                            .font(.title)
                            .padding(.bottom, 5)
                    }
                    
                    
                    List {
                        Section(header: Text("Árnica")) {
                            Text("1. Alivia contusiones, esguinces y dolores mosuculares")
                            Text("2. ...")
                        }
                        Section(header: Text("Sábila")) {
                            Text("1. Tiene propiedades cicatrizantes y antiinflamatorias.")
                            Text("2. ...")
                        }
                        Section(header: Text("Manzanilla")) {
                            Text("1. Se usa comunmente como digestivo y alivio de cólicos.")
                            Text("2. ...")
                        }
                    }
                    .frame(height: 300) // Para limitar el tamaño de la lista
                }
                .padding(.horizontal)
                
                // Apartado de Mapa de Centros de Salud Cercanos
                VStack(alignment: .leading, spacing: 15) {
                    HStack{
                        
                        Image("centroS")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Centros de Salud")
                            .font(.title)
                            .padding(.bottom, 5)
                    }
                    
                    
                    HealthMapView() // El mapa con centros de salud cercanos
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
    }
}

struct HealthMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 19.179109540913146, longitude: -99.02369245713565), // Coordenadas del centro
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: healthCenters) { center in
            MapMarker(coordinate: center.location, tint: .red)
        }
        .frame(height: 300)
        .cornerRadius(10)
    }
}

// Centros de salud cercanos
struct HealthCenter: Identifiable {
    let id = UUID()
    let name: String
    let location: CLLocationCoordinate2D
}

/*Coordenadas
 Centro de salud Salud San Lorenzo Tlacoyucan: 19.179109540913146, -99.02369245713565
 Hospital General: 19.20159061309685, -99.01056083756816
*/
let healthCenters = [
    HealthCenter(name: "Centro de Salud Salud San Lorenzo Tlacoyucan", location: CLLocationCoordinate2D(latitude: 19.179109540913146, longitude: -99.02369245713565)),
    HealthCenter(name: "Hospital General Milpa Alta", location: CLLocationCoordinate2D(latitude: 19.20159061309685, longitude: -99.01056083756816))
]


