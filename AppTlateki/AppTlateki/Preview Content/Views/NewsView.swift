//
//  NewsView.swift
//  AppTlateki
//
//  Created by David Israel Tsutsumi Bernal on 29/10/24.
//

//
//  HistoryView.swift
//  Tlalicalli_v2
//
//  Created by Facultad de Contaduría y Administración on 17/10/24.
//

import SwiftUI

struct NewsView: View {
    @State private var isSection1Expanded = false
    @State private var isSection2Expanded = false
    @State private var isSection3Expanded = false
    @State private var isSection4Expanded = false
    @State private var isSection5Expanded = false
    @State private var likedSection1 = false
    @State private var likedSection2 = false
    @State private var likedSection3 = false
    @State private var likedSection4 = false
    @State private var likedSection5 = false

    var body: some View {
        ScrollView {
            VStack {
                Text("Noticias")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.top)

                Text("Aquí encontrarás noticias acerca de la contaminación causada por los residuos sólidos.")
                    .font(.custom("HelveticaNeue", size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Divider().padding(.vertical)

                // Sección 1
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "leaf.circle.fill")
                            .foregroundColor(.green)
                            .font(.title)
                        Text("1. Introducción al cuidado ambiental en zonas rurales de México")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("exampleImage1") // Esqueleto para imagen
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(10)

                    if isSection1Expanded {
                        Text("""
                        En México, las zonas rurales como Milpa Alta son clave para la conservación de la biodiversidad y el mantenimiento de servicios ecosistémicos cruciales, como la purificación del agua y la regulación del clima. Estas áreas son ricas en biodiversidad y hogar de muchas comunidades indígenas y campesinas, que dependen directamente de los recursos naturales para su sustento.
                        """)
                        .padding(.bottom)

                        Question1() // Agrega la pregunta correspondiente
                    }

                    Button(action: { isSection1Expanded.toggle() }) {
                        Text(isSection1Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection1.toggle() }) {
                            Image(systemName: likedSection1 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 2
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "globe.americas.fill")
                            .foregroundColor(.orange)
                            .font(.title)
                        Text("2. Principales problemas ambientales en zonas rurales como Milpa Alta")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("exampleImage2") // Esqueleto para imagen
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(10)

                    if isSection2Expanded {
                        Text("""
                        En zonas rurales de México, incluidos lugares como Milpa Alta, los principales problemas ambientales incluyen la deforestación, la erosión del suelo, la contaminación del agua y el mal manejo de residuos sólidos.
                        """)
                        .padding(.bottom)

                        Question2() // Agrega la pregunta correspondiente
                    }

                    Button(action: { isSection2Expanded.toggle() }) {
                        Text(isSection2Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection2.toggle() }) {
                            Image(systemName: likedSection2 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.orange.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 3
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "hands.sparkles.fill")
                            .foregroundColor(.blue)
                            .font(.title)
                        Text("3. Beneficios del cuidado ambiental en Milpa Alta y otras zonas rurales")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("exampleImage3") // Esqueleto para imagen
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(10)

                    if isSection3Expanded {
                        Text("""
                        El cuidado del medio ambiente en zonas rurales de México, como Milpa Alta, trae beneficios tangibles como la mejora de la agricultura sostenible, la conservación de recursos hídricos y la mitigación del cambio climático.
                        """)
                        .padding(.bottom)

                        Question3() // Agrega la pregunta correspondiente
                    }

                    Button(action: { isSection3Expanded.toggle() }) {
                        Text(isSection3Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection3.toggle() }) {
                            Image(systemName: likedSection3 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 4
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "leaf.circle")
                            .foregroundColor(.purple)
                            .font(.title)
                        Text("4. Acciones que las comunidades rurales de Milpa Alta pueden tomar")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("exampleImage4") // Esqueleto para imagen
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(10)

                    if isSection4Expanded {
                        Text("""
                        Las comunidades rurales en Milpa Alta pueden implementar varias prácticas sostenibles, como la reforestación, el compostaje comunitario y la agricultura orgánica, para proteger su medio ambiente.
                        """)
                        .padding(.bottom)

                        Question4() // Agrega la pregunta correspondiente
                    }

                    Button(action: { isSection4Expanded.toggle() }) {
                        Text(isSection4Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection4.toggle() }) {
                            Image(systemName: likedSection4 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)

                Divider().padding(.vertical)

                // Sección 5
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "person.3.fill")
                            .foregroundColor(.teal)
                            .font(.title)
                        Text("5. Educación ambiental y turismo ecológico")
                            .font(.headline)
                    }
                    .padding(.vertical, 5)

                    Image("exampleImage5") // Esqueleto para imagen
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(10)

                    if isSection5Expanded {
                        Text("""
                        Fomentar el turismo ecológico en Milpa Alta, como recorridos por sus bosques y áreas agrícolas, puede generar ingresos adicionales para la comunidad y crear conciencia sobre la importancia de proteger el medio ambiente.
                        """)
                        .padding(.bottom)

                        Question5() // Agrega la pregunta correspondiente
                    }

                    Button(action: { isSection5Expanded.toggle() }) {
                        Text(isSection5Expanded ? "Leer menos" : "Leer más")
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Button(action: { likedSection5.toggle() }) {
                            Image(systemName: likedSection5 ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                        }
                        Text("¿Te resultó útil esta sección?")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.teal.opacity(0.1))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
            .padding()
        }
    }
}
